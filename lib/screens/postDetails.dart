
import 'package:flutter/material.dart';
import 'package:html/parser.dart';


class PostDetailPage extends StatefulWidget {
  final data;
  const PostDetailPage({Key? key, required this.data}) : super(key: key);

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['title']['rendered']),
        backgroundColor: Color.fromARGB(255, 144, 41, 103), 
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
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
            ),
          ),
        ],
      ),
    );
  }
}