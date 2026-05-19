import 'package:flutter/material.dart';
import 'facebook_dark.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  MyApp({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FaceBook'),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home),
                Icon(Icons.play_arrow),
                Icon(Icons.person),
                Icon(Icons.shop),
                Icon(Icons.notifications),
                Icon(Icons.menu),
              ],
            ),
            Divider(color:Colors.black,thickness: 2,),
            Row(
              children: [
                CircleAvatar(),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(50),
                  ),
                )
              ],),
            Divider(color: Colors.black,thickness: 2,),
            SizedBox(height: 10,),
        Row(children: [
Container(
  height: 250,
  width: 100,
  decoration: BoxDecoration(
    border: Border.all(color: Colors.orange),
    borderRadius: BorderRadius.circular(10),
  ),
),
          Container(
              height: 250,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(10)
          ),
          ),
          Container(
            height: 250,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          Container(
            height: 250,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          Container(
            height: 250,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          Container(
            height: 250,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          Container(
            height: 250,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          Container(
            height: 250,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(10)
            ),
          ),
        ],
        ),
          ],
          
        ),,
      ),
    ),
      );

  }
}
