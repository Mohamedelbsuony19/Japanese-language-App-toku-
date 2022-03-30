import 'package:flutter/material.dart';
import 'package:toku/components/design_item_Number_Page.dart';
import 'package:toku/models/content.dart';

class familyPge extends StatelessWidget {

List<ContentClass>familyList=[
   ContentClass(
     enName: 'father ', jpName: 'chichi ', image: 'assets/images/family_members/family_father.png'
     ,voice: '/father.wav',),
       
   ContentClass(
     enName: 'mother', jpName: 'haha ', image: 'assets/images/family_members/family_mother.png'
     ,voice: '/mother.wav',
    ),
   ContentClass(
     enName: 'old brother', jpName: 'ani ', image: 'assets/images/family_members/family_older_brother.png'
     ,voice: '/older bother.wav',
     ),
   ContentClass(
     enName: 'old sister', jpName: 'ane ', image: 'assets/images/family_members/family_older_sister.png'
     ,voice: '/older sister.wav',
     ),
   ContentClass(
     enName: 'younger brother', jpName: 'otooto ', image: 'assets/images/family_members/family_younger_brother.png'
     ,voice: '/younger brohter.wav',
     ),
   ContentClass(
     enName: 'younger sister', jpName: 'imooto ', image: 'assets/images/family_members/family_younger_sister.png'
     ,voice: '/younger sister.wav',
     ),
   ContentClass(
     enName: 'grand father', jpName: 'sofu ', image: 'assets/images/family_members/family_grandfather.png'
     ,voice: '/grand father.wav',
     ),
   ContentClass(
     enName: 'grand mother', jpName: 'sobo ', image: 'assets/images/family_members/family_grandmother.png'
     ,voice: '/grand mother.wav',
    ),
   ContentClass(
     enName: 'son', jpName: 'musuko ', image: 'assets/images/family_members/family_son.png'
     ,voice: '/son.wav',
     ),
   ContentClass(
     enName: 'daughter', jpName: 'musume ', image: 'assets/images/family_members/family_daughter.png'
     ,voice: '/daughter.wav',
     ),
  
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xFF47A5CB),
      ),
      body: ListView.builder(
        itemBuilder: (context,index){
      return designitemPage(
      content: familyList[index],
      itemBackGroundColor: Color(0xFF46797D),
      itemType: 'family_members',
      enTextColor: Colors.white,
      jpTextColor: Color(0xFF7F0000),
      iconColor: Color(0xFF7F0000),
      imageBackgroundColor: Color(0xFF7F0000),
      
      );
      },
      itemCount: familyList.length,
      ),
    )
    ;
  }

  

}