import 'package:flutter/material.dart';
import 'package:toku/components/design_item_Number_Page.dart';
import 'package:toku/models/pharses_content.dart';

class PharsesPage extends StatelessWidget {

List<contentPharses>listPharses=[
  contentPharses(
   enText: 'are you coming',
   jpText: 'Kimasu ka' ,
   path: '/are_you_coming.wav'
   ),
  contentPharses(
   enText: 'dont_forget_to_subscribe',
   jpText: ' forget to sabusukuraibu ',
   path: '/dont_forget_to_subscribe.wav'
   ),
  contentPharses(
   enText: 'how_are_you_feeling.',
   jpText: ' Go kibun wa ikagadesu ka ',
   path: '/how_are_you_feeling.wav'
   ),
  contentPharses(
   enText: 'i_love_anime',
   jpText: ' Watashi wa anime ga ',
   path: '/i_love_anime.wav'
   ),
  contentPharses(
   enText: 'i_love_programming',
   jpText: ' I _ love _ programming ',
   path: '/i_love_programming.wav'
   ),
  contentPharses(
   enText: 'programming_is_easy',
   jpText: ' Puroguramingu _ is _ easy ',
   path: '/programming_is_easy.wav'
   ),
  contentPharses(
   enText: 'what_is_your_name',
   jpText: ' Namae wa nandesu ka ',
   path: '/what_is_your_name.wav'
   ),
  contentPharses(
   enText: 'where_are_you_going',
   jpText: ' Doko ni iku no ',
   path: '/where_are_you_going.wav'
   ),
  contentPharses(
   enText: 'yes_im_coming',
   jpText: 'Yes _ im _ kamingu',
   path: '/yes_im_coming.wav'
   ),
   contentPharses(
   enText: 'programming_is_easy',
   jpText: ' Puroguramingu _ is _ easy ',
   path: '/programming_is_easy.wav'
   ),
   contentPharses(
   enText: 'i_love_programming',
   jpText: ' I _ love _ programming ',
   path: '/i_love_programming.wav'
   ),
  
];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xFF889DFF),
      ),
      body: ListView.builder(
        itemBuilder: (context,index){
      return designPharses(
        conPharses: listPharses[index],
         enTextColor: Colors.white,
          jpTextColor: Color(0xFF1A177D),
           iconColor: Color(0xFF1A177D),
            itemBackGroundColor: Color(0xFF7D7C1A),
             itemType: 'phrases'
             );
      },
      itemCount: listPharses.length,
      ),
    )
    ;
  }
}