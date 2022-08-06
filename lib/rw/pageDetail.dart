import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:html/parser.dart';
class PageDetail extends StatelessWidget {
  final data;
  const PageDetail({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data['title']['rendered']),
        backgroundColor: Color.fromARGB(255, 144, 41, 103), 
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                 crossAxisCount: 2,  
                 crossAxisSpacing: 1.0,  
                 mainAxisSpacing: 1.0  
                 ),  
                children:[Card(
                elevation: 8,
                shadowColor: Color.fromARGB(99, 144, 41, 103),
                child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  children: [
                    // FadeInImage.assetNetwork(
                    //   placeholder:"assets/loading.gif",
                    //   image:imageUrl),
                    Text("aliabbas", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
                ),
                ),] 
              ),
            ),
          ),
        ],
      ),
    );
  }
}