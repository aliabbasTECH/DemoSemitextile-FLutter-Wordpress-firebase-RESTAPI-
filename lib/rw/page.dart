import 'package:flutter/material.dart';
import '../wp-api.dart';
import 'pageDetail.dart';


class Pages extends StatefulWidget {
  Pages({Key? key}) : super(key: key);

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  MyPage pageService = MyPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pages")),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: FutureBuilder<List>(
                future: pageService.getAllPage(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data?.length == 0) {
                      return Center(
                        child: Text("No Page"),
                      );
                    }
                    return GridView.builder(
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                       crossAxisCount: 2,  
                       crossAxisSpacing: 1.0,  
                       mainAxisSpacing: 1.0  
        ), 
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, i) {
                          return ListTile(
                            title: Center(
                              child: Text(
                                snapshot.data?[i]['title']['rendered'],
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black),
                              ),
                            ),
                            onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PageDetail(data: snapshot.data?[i]),
                                ),
                              )
                            },
                          );
                        });
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}