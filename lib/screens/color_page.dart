import 'package:flutter/material.dart';
import 'package:toku/components/design_item_Number_Page.dart';
import 'package:toku/models/content.dart';

class ColorPage extends StatelessWidget {

List<ContentClass>ColorList=[
   ContentClass(

     enName: 'black ', 
     jpName: 'kuro  ', 
     image: 'assets/images/colors/color_black.png',
     voice: '/black.wav',),
       
   ContentClass(

     enName: 'brown',
     jpName: 'chairo  ',
     image: 'assets/images/colors/color_brown.png',
     voice: '/brown.wav',
    ),
   ContentClass(

     enName: 'yellow',
     jpName: 'kiiro  ', 
     image: 'assets/images/colors/color_dusty_yellow.png',
     voice: '/yellow.wav',
     ),
   ContentClass(

     enName: 'gray',
     jpName: 'haiiro  ',
     image: 'assets/images/colors/color_gray.png',
     voice: '/gray.wav',
     ),
   ContentClass(

     enName: 'brown',
     jpName: 'chairo  ',
     image: 'assets/images/colors/color_brown.png',
     voice: '/brown.wav',
     ),
   ContentClass(

     enName: 'green', 
     jpName: 'midori  ', 
     image: 'assets/images/colors/color_green.png',
     voice: '/green.wav',
     ),
   ContentClass(

     enName: 'red',
     jpName: 'aka  ',
     image: 'assets/images/colors/color_red.png'
     ,voice: '/red.wav',
     ),
   ContentClass(

     enName: 'white',
     jpName: 'shiro  ',
     image: 'assets/images/colors/color_white.png'
     ,voice: '/white.wav',
    ),
   ContentClass(

     enName: 'yellow',
     jpName: 'kiiro  ',
     image: 'assets/images/colors/yellow.png'
     ,voice: '/dusty yellow.wav',
     ),
   ContentClass(
     
     enName: 'green', 
     jpName: 'midori ',
     image: 'assets/images/colors/color_green.png'
     ,voice: '/green.wav',
     ),
  
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color'),
        backgroundColor: Color(0xFF358DFF),
      ),
      body: ListView.builder(
        itemBuilder:(context,index){
          return designitemPage(
          content: ColorList[index],
          itemBackGroundColor: Color(0xFF4D527D),
          itemType: 'colors',
          enTextColor: Colors.white,
          jpTextColor: Colors.grey,
          iconColor: Colors.grey,
          imageBackgroundColor: Colors.grey[700],
            );
        } ,
        itemCount: ColorList.length,
        )
        );
  }
}