import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  Color lon;
  String name;
  Function() OnTab;
  Items(this.lon,this.name,this.OnTab);
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: OnTab,
      child: Container(
               decoration: BoxDecoration(
    border: Border.all( color: Colors.white,),
                  color: lon,

  ), 
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Text(name,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),
                                    ),
                ),
              ),
              
              ),
              
    );
  }
}