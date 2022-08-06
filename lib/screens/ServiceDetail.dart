import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:convert';

import 'innerServices.dart';

class ServiceDetailPage extends StatelessWidget {
  final servData;
  ServiceDetailPage({required  this.servData});
    
  @override
  Widget build(BuildContext context) {
    fetchServices() async {
     var res= await http.get(Uri.parse("https://samitextile-95531-default-rtdb.firebaseio.com/samiTextileDatabase/ourServices/$servData/data.json"));
     var services = jsonDecode(res.body);
     List list = [];
     services.forEach((key, value) {
         list.add(value);
        });
        // print("this is list:>>>>>::>>> $list");
        return list;
    }
  
    return 
         Scaffold(
           appBar: AppBar(
            title: Text("Our Services"),
           backgroundColor: Color.fromARGB(255, 144, 41, 103), 
           ),
           
           body: FutureBuilder(
                future: fetchServices(),
                builder:(context,snapshot){
                  var snapData = snapshot.data as dynamic ;
              //  print("this is FirebaseDAte===>> ${snapData}");
                  if(snapshot.hasData){
                     // ignore: dead_code
                     return ListView(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0, color: Colors.purple))
                         ),
                          height: 50,
                          child: Center(
                            child: Text(servData, style: TextStyle(color: Colors.black, fontSize: 25),
                            ),
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
                                        InnerServices(TitleData: title ,servData :servData),
                                  ),
                                );
                           },
                            child: Card(                
                              margin:  EdgeInsets.all(15.0),
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
                      ],
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                }
                 ),
         );
      }
  
}