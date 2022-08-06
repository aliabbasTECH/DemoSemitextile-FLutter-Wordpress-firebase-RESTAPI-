import 'package:flutter/material.dart';
import '../screens/Posts.dart';
import '../screens/OurServices.dart';
import '../screens/aboutUs.dart';



class Drawerwidget extends StatefulWidget {
  const Drawerwidget({ Key? key }) : super(key: key);

  @override
  State<Drawerwidget> createState() => _DrawerwidgetState();
}

class _DrawerwidgetState extends State<Drawerwidget> {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          image:  DecorationImage(
          image: NetworkImage("https://demo.logicsaint.com/WA/sami_textile/wp-content/uploads/2022/07/machine-embroidery.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
                Colors.black54,
                BlendMode.darken
               ),
        ),
      
        ),
        
        child: Text('SAMI TEXTILE', style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255))),
      ),
      Container(
         decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: Color.fromARGB(255, 144, 41, 103))
            ),),
        child: ListTile(
          leading: Icon(Icons.home,color: Color.fromARGB(255, 144, 41, 103),),
          title: const Text('Home',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black)),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  OurServices()));},
        
        ),
      ),
      Container(
         decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: Color.fromARGB(255, 144, 41, 103))
            ),),
        child: ListTile(
          leading: Icon(Icons.post_add_rounded,color: Color.fromARGB(255, 144, 41, 103),),
          title: const Text('My blog',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black)),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AllPosts()));},
        
        ),
      ),
      Container(
         decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: Color.fromARGB(255, 144, 41, 103))
            ),),
        child: ListTile(
          leading: Icon(Icons.contacts , color:Color.fromARGB(255, 144, 41, 103),),
          title: const Text('About US',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black)),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  AboutPage()));},
        
        ),
      ),
      Container(
         decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: Color.fromARGB(255, 144, 41, 103))
            ),),
        child: ListTile(
          leading: Icon(Icons.perm_phone_msg_sharp,color: Color.fromARGB(255, 144, 41, 103),),
          title: const Text('OurServices',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black)),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  OurServices()));},
        
        ),
      ),
     
    ],
  ),
         );
  }
}




