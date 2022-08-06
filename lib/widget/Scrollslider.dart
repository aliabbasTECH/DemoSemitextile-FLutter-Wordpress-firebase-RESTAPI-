import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ScrollSlider extends StatelessWidget {
  
   final List = [
    "https://www.ptsansan.co.id/wp-content/uploads/2021/10/sansan-saudaratex-jaya-550x350-artikel-page-apa-bahan-yang-bagus-untuk-seragam-image-3.jpg",
    "https://kristinesser.com/wp-content/uploads/2019/03/IMG_6645-550x350.jpg",
    "https://themanufacturer-cdn-1.s3.eu-west-2.amazonaws.com/wp-content/uploads/2015/09/14121316/RESIZE-Fabrics-e1452527426849-550x350.jpg",
    "https://themanufacturer-cdn-1.s3.eu-west-2.amazonaws.com/wp-content/uploads/2015/06/14123439/Fabric-woven-with-the-Project-Jacquard-conductive-yarn.-Image-courtesy-of-Google.-550x350.jpg",
    ];
   
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
  options: CarouselOptions(
      aspectRatio: 5.6/3.6,
      viewportFraction: 1,
      initialPage: 1,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      scrollDirection: Axis.horizontal,
  ),
  items: List.map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Image.network(i),
              
            ],
          )
        );
      },
    );
  }).toList(),
),
    );
 
  }
}