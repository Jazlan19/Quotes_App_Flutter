import 'package:flutter/material.dart';
import 'package:quotesapp/Screens/second_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
            var url = Uri.parse('https://goquotes-api.herokuapp.com/api/v1/random?count=1');
            var response = await http.get(url);
            print('Response status: ${response.statusCode}');
            print('Response body: ${response.body}');
            var data = jsonDecode(response.body);
           String quote = data["quotes"][0]["text"];
           String author = data["quotes"][0]["author"];
           

              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => SecondScreen(quoteText: quote,authorName: author,))));
            },
            child: Text("Get Quote!!"),
          ),
        ),
      ),
    );
  }
}
