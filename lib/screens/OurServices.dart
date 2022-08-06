import 'package:flutter/material.dart';
import '../widget/Drawer.dart';
import '../widget/Scrollslider.dart';
import '../wp-api.dart';
import 'ServiceDetail.dart';

class OurServices extends StatefulWidget {
  
  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  
  @override
  Widget build(BuildContext context) {
    
    return 
         Scaffold(
            appBar: AppBar(
          title: Text("Sami Textile"), 
          backgroundColor: Color.fromARGB(255, 144, 41, 103), 
          ),
           body: FutureBuilder(
                future: fetchfireBaseData(),
                builder:(context,snapshot){
                  var snapData = snapshot.data as dynamic ;
               // print("this is FirebaseDAte===>> ${snapData}");
                  if(snapshot.hasData){
                     // ignore: dead_code
                     return ListView(
                      children: <Widget>[
                        Container(
                          child:  Column(
                            children: [
                             ScrollSlider(),
                             Center(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("Our services", 
                                style: TextStyle(
                                  fontSize: 25,fontWeight: 
                                  FontWeight.bold, 
                                  color: Color.fromARGB(255, 132, 29, 116)
                                  ,decoration: TextDecoration.underline),),
                              ))                                
                              
                            ],
                          ),
                        ),
                        ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapData.length,
                        itemBuilder: (BuildContext context, ind){
                          var title = snapData[ind]['title'];
                          var imageUrl= snapData[ind]['imageurl'];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ServiceDetailPage(servData: title ),
                                  ),
                                );
                            },
                            child: Card( 
                              elevation: 5.0,
                              shadowColor: Color.fromARGB(255, 144, 41, 103),              
                              margin:  EdgeInsets.all(8.0),
                              child:  Column(
                                  children: [
                                     FadeInImage.assetNetwork(
                                    placeholder:"assets/loading.gif",
                                     image:imageUrl),
                                    Text(title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),
                                    ),
                                  ],
                                )
                            ),
                          );
                          }
                        ),
                        // Container(
                        //   height: 40,
                        //   color: Colors.deepOrange,
                        //   child: Center(
                        //     child: Text(
                        //       'Footer',
                        //       style: TextStyle(color: Colors.white, fontSize: 16),
                        //     ),
                        //   ),
                        // ),
                      ],
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                }
                 ),
                 drawer:Drawerwidget() ,
         );
      }
  
}