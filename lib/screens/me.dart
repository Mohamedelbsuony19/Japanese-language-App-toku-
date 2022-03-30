import 'package:flutter/material.dart';

class My extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact With Me',
        style: TextStyle(
          fontSize: 25
        ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        
        children: [
          Spacer(flex: 2,),
          Center(
            child: Image.asset('assets/images/mohamed/m123y.jpg',
            height: 150,
            ),
          ),

          SizedBox(height: 40,),

          Center(
            child: Text('Mohamed Sabry Ali',style: TextStyle(
              color: Colors.red[200],
              fontSize: 20
            ),),
          ),
                    Spacer(flex: 2,),


          SizedBox(height: 40,),


          Row(
            children: [
              Text('Phone :',style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                )
                ,),
                SizedBox(width: 20,),
              Text('01285679505 / 0106 956 6375',style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                ),
                ),
            ],
          ),
          Spacer(flex: 1,),
          Row(
            children: [
              Text('WhatsApp number :',style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                )
                ,),
                SizedBox(width: 20,),
              Text('01285679505',style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                ),
                ),
            ],
          ),
                    Spacer(flex: 1,),

          Row(
            children: [
              Text('E-mail Address :',style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                )
                ,),
                SizedBox(width: 20,),
              Text('sabrym339@gmail.com',style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                ),
                ),
            ],
          ),
          Spacer(flex: 3,),
          Text('Thanks for your suggestion', style: TextStyle(
            fontSize: 12,
            color: Colors.blue
          ),),
          Spacer(flex: 3,),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}