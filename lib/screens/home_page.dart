

import 'package:flutter/material.dart';
import 'package:toku/screens/color_page.dart';
import 'package:toku/screens/family_page.dart';
  import 'package:toku/screens/item_home_page.dart';
import 'package:toku/screens/me.dart';
import 'package:toku/screens/number_page.dart';
import 'package:toku/screens/phareses_page.dart';


class HomePage extends StatelessWidget {  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Toku By Mohamed Sabry")),
          backgroundColor: Colors.grey,
        ),
        body:
         Column(
          children: [
            Items(Color(0xFF32797D), 'Numbers',(){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                return NumberPage();
              }));
            }
            ),
            Items(Color(0xFF32797D), 'Family Members',(){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext){
                  return familyPge();
                } ));
            }
            ),
            Items(Color(0xFF32797D), 'Colors',(){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                return ColorPage();
              }
              )
              );
            }),
            Items(Color(0xFF32797D), 'Pharses',(){
              Navigator.push(
                context, MaterialPageRoute(builder: (BuildContext){
                  return PharsesPage();
                }));
            }),



            SizedBox(height: 70,),


            
            Column(
              children: [
                
                Text('This simple program was implemented by',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12
                  ),
                  ),
                  SizedBox(height: 5,),
                   Text(' Mohamed Sabry',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(' To make suggestions,',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12
              ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext){
                return My();
              }
              )
              );
                },
                 child: 
                  Text(' click here',
            style: TextStyle(
              color: Colors.red,
              fontSize: 12
              ),
              ),
                 )
                ],
              )
              ],
            ),
           
                     ],
        ),
        
        backgroundColor: Color(0xFF32797D),
      );
    }
  }