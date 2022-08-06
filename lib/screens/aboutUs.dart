import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class AboutPage extends StatefulWidget {

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
          backgroundColor: Color.fromARGB(255, 144, 41, 103), 
      ),
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'https://demo.logicsaint.com/WA/sami_textile/about-us/',
          
        );
      }),
    );
  }
}









































































































//___________________________________________________________________________________old about page___________________________________________________________________ 



// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

// class AboutPage extends StatefulWidget {
//   static String tag = 'about-page';
//   @override
//   _AboutPageState createState() => _AboutPageState();
// }

// class _AboutPageState extends State<AboutPage> {
//   void _openExternalLink(String url, BuildContext context) {
//     canLaunch(url).then((status) {
//       if (status) {
//         launch(url);
//       } else {
//         // Show an snackbar error
//         Scaffold.of(context).showSnackBar(
//           SnackBar(
//             content: Text(
//                 'abcdefg'),
//             duration: Duration(seconds: 15),
//           ),
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//          title: Text("About Us"), 
//           backgroundColor: Color.fromARGB(255, 144, 41, 103),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Center(
//             child: Text(
//               'Challenge #1',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           SizedBox(height: 10),
//           Center(child: Text('App Contact', style: TextStyle(fontSize: 16))),
//           SizedBox(height: 20),
//           Center(
//             child: Text('App Flutter by:'),
//           ),
//           Center(
//             child: Text(
//               "AliAbbas",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 IconButton(
//                   icon: const Icon(FontAwesomeIcons.github),
//                   onPressed: () => _openExternalLink(
//                     "https://github.com",
//                     context,
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(FontAwesomeIcons.linkedin),
//                   onPressed: () => _openExternalLink(
//                     "https://linkedin.com",
//                     context,
//                   ),
//                 ),
//               ])
//         ],
//       ),
//     );
//   }
// }