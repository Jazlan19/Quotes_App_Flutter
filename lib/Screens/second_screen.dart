import 'package:flutter/material.dart';



class SecondScreen extends StatelessWidget {
  String quoteText;
  String authorName;

   SecondScreen({Key? key,required this.quoteText,required this.authorName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      appBar: AppBar(),
      // ignore: prefer_const_constructors
      body: Column(children: [Padding(padding:const EdgeInsets.all(10.0)),
         Text (quoteText,
         style: TextStyle(fontSize: 22), ),
        // ignore: prefer_const_constructors
        Padding(padding:const EdgeInsets.only(right: 15.0)), Align(alignment: Alignment.bottomRight,
         child: Text("- $authorName",
        style:TextStyle(fontSize: 20))),
      ],),
     
    ),
  );

  }
}