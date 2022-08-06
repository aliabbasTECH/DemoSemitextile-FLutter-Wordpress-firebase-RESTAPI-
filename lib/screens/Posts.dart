import 'package:flutter/material.dart';
import 'postDetails.dart';
import '../wp-api.dart';

class AllPosts extends StatelessWidget {
  const AllPosts({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
          title: Text("My Blog"), 
          backgroundColor: Color.fromARGB(255, 144, 41, 103), 
          ),
    
         body: Container(
        child: FutureBuilder(
          future: fetchWpPosts(),
          builder:(context,snapshot){
            var snapData = snapshot.data as dynamic;
            if(snapshot.hasData){
               return ListView.builder(
                itemCount: snapData.length,
                itemBuilder: (BuildContext context, ind){
                   var wppost = snapData[ind] as dynamic ;
                   var imageUrl= wppost['_embedded']['wp:featuredmedia'][0]['source_url'] ;
                  //  print("this is images===> $imageUrl");
                  return Container(
                    margin: new EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: ()=>{
                   Navigator.push(context,MaterialPageRoute(builder: (context) =>PostDetailPage(data: wppost),),  )},
                      child: Card(
                        elevation: 8,
                        shadowColor: Color.fromARGB(255, 144, 41, 103),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              FadeInImage.assetNetwork(
                                placeholder:"assets/loading.gif",
                                image:imageUrl),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(wppost['title']['rendered'], style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
            }
            return Center(child: CircularProgressIndicator());
          }),
         ),
      ),
    );
  }
}