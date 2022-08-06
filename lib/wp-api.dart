import 'package:flutter/cupertino.dart';
import "package:http/http.dart" as http;
import 'dart:convert';


Future<List> fetchWpPosts() async{
  final res= await http.get(Uri.parse("https://demo.logicsaint.com/WA/sami_textile/wp-json/wp/v2/posts?_embed"));
  var allposts = jsonDecode(res.body);
  
  return allposts ;
  
}

Future<List> fetchWpPages() async{
  final res= await http.get(Uri.parse("https://demo.logicsaint.com/WA/sami_textile/wp-json/wp/v2/Pages?_embed"));
  var allPages = jsonDecode(res.body);
  return allPages ;
  
}


class MyPage {
  String baseUrl = "https://demo.logicsaint.com/WA/sami_textile/wp-json/wp/v2/Pages?_embed";
  Future<List> getAllPage() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error("Server Error");
      }
    } catch (SocketException) {
      return Future.error("Error Fetching Data");
    }
  }
}

 
// 

 
const firebase_DB_URL = "https://samitextile-95531-default-rtdb.firebaseio.com/samiTextileDatabase/ourServices.json";
 
 Future  fetchfireBaseData() async{
  final List list = [];
  try {
    var res= await http.get(Uri.parse(firebase_DB_URL));
    if (res.statusCode == 200) {
        var data= jsonDecode(res.body);
        data.forEach((key, value) {
         list.add(value);
        });
        // print("this is list $list");
        return list;
      } else {
        return Future.error("Server Error");
      }
  } catch (SocketException) {
    return Future.error("Error Fetching Data");
  }
   
  //      var firebaseurl=(jsonDecode(res.body));

  // return firebaseurl ;
  
}



