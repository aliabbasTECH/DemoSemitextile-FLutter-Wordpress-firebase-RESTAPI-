import 'package:flutter/material.dart';
import './screens/OurServices.dart';


void main() {runApp( MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({ Key? key }) : super(key: key);

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return 
      Center(
          child:  Container(child: OurServices(),)
    );
  }
}