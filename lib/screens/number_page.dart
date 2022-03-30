import 'package:flutter/material.dart';
import 'package:toku/components/design_item_Number_Page.dart';
import 'package:toku/models/content.dart';

class NumberPage extends StatelessWidget {
  List<ContentClass>numberLists=[
   ContentClass(
     enName: 'one', jpName: 'ichi', image: 'assets/images/numbers/number_one.png'
     ,voice: '/number_one_sound.mp3',
    
     ),  
   ContentClass(
     enName: 'two', jpName: 'ni', image: 'assets/images/numbers/number_two.png'
     ,voice: '/number_two_sound.mp3',
    ),
   ContentClass(
     enName: 'three', jpName: 'san', image: 'assets/images/numbers/number_three.png'
     ,voice: '/number_three_sound.mp3',
     ),
   ContentClass(
     enName: 'four', jpName: 'yon', image: 'assets/images/numbers/number_four.png'
     ,voice: '/number_four_sound.mp3',
     ),
   ContentClass(
     enName: 'five', jpName: 'go', image: 'assets/images/numbers/number_five.png'
     ,voice: '/number_five_sound.mp3',
     ),
   ContentClass(
     enName: 'six', jpName: 'roku', image: 'assets/images/numbers/number_six.png'
     ,voice: '/number_six_sound.mp3',
     ),
   ContentClass(
     enName: 'seven', jpName: 'nana', image: 'assets/images/numbers/number_seven.png'
     ,voice: '/number_seven_sound.mp3',
     ),
   ContentClass(
     enName: 'eight', jpName: 'hachi', image: 'assets/images/numbers/number_eight.png'
     ,voice: '/number_eight_sound.mp3',
     ),
   ContentClass(
     enName: 'nine', jpName: 'kua', image: 'assets/images/numbers/number_nine.png'
     ,voice: '/number_nine_sound.mp3',
     ),
   ContentClass(
     enName: 'ten', jpName: 'ju', image: 'assets/images/numbers/number_ten.png'
     ,voice: '/number_ten_sound.mp3',
     ),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number'),
        backgroundColor: Color(0xFFA9B0FF),
      ),
      body: ListView.builder(
        itemBuilder: (context,index){
      return designitemPage(content: numberLists[index],
      itemBackGroundColor: Colors.grey,
      itemType: 'sounumber',
      enTextColor: Colors.white,
      jpTextColor: Color(0xFF7BF6B2),
      iconColor: Color(0xFF7BF6B2),
      imageBackgroundColor: Color(0xFF547D5D),
      );
      },
      itemCount: numberLists.length,
      ),
    );
  }


List<Widget>loopitem (List<ContentClass>parmetar){
List<designitemPage>listitem=[];
for(int i=0 ; i<numberLists.length ; i++){
  listitem.add(designitemPage(content: numberLists[i],itemBackGroundColor: Colors.grey,
  itemType: 'sounumber',
  )) ;
}
return listitem;
}

}



