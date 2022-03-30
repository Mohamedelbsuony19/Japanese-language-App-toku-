import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/content.dart';
import 'package:toku/models/pharses_content.dart';

class designitemPage extends StatelessWidget {
  const designitemPage({ Key? key,required this.content,
  required this.itemBackGroundColor,
  required this.itemType,
  this.enTextColor,
  this.iconColor,
  this.jpTextColor,
  this.imageBackgroundColor
  }) : super(key: key);
  final ContentClass content;
  final Color itemBackGroundColor;
  final String itemType;
  final Color ?enTextColor;
  final Color ?jpTextColor;
  final Color ?iconColor;
  final Color ?imageBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return   Container(
            margin: EdgeInsets.only(bottom: 1),
            height: 65,
            color: itemBackGroundColor,
            child:
             Row(
               children: [
              Container(
                
                color: imageBackgroundColor,
                child: Image.asset(content.image)),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(content.enName,style: TextStyle(color: enTextColor,fontSize: 18),),
                  Text(content.jpName,style: TextStyle(color: jpTextColor,fontSize: 22),),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child:
                 IconButton(onPressed:() {
                   try{
                     
                    AudioCache player= AudioCache (prefix: 'assets/sounds/$itemType');
                    player.play(content.voice); 
                   }catch(noo){
                     print('noo');
                   }
                 },
                  icon: Icon(Icons.play_arrow,color: iconColor,size: 30,))
              )
   
            ],
            ),

          )
;
  }
}

class designPharses extends StatelessWidget {
  final contentPharses conPharses;
  final Color itemBackGroundColor;
  final String itemType;
  final Color enTextColor;
  final Color jpTextColor;
  final Color iconColor;

  
  const designPharses({ Key? key,
    
  required this.conPharses,
  required this.enTextColor,
  required this.jpTextColor,
  required this.iconColor,
  required this.itemBackGroundColor,
  required this.itemType,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(bottom: 1),
            height: 65,
            color: itemBackGroundColor,
            child:
             Row(
               
               children: [
              
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Expanded(child: Text(conPharses.enText,style: TextStyle(color: enTextColor,fontSize: 18),)),
                  Expanded(child: Text(conPharses.jpText,style: TextStyle(color: jpTextColor,fontSize: 22),)),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child:
                 IconButton(onPressed:() {
                   try{
                     
                    AudioCache player= AudioCache (prefix: 'assets/sounds/$itemType');
                    player.play(conPharses.path); 
                   }catch(noo){
                     print('noo');
                   }
                 },
                  icon: Icon(Icons.play_arrow,color: iconColor,size: 30,))
              )
   
            ],
            
            ),
            
          )
;
  }
}