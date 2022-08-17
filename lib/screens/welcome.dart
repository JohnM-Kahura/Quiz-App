import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),floatingActionButton: FloatingActionButton(onPressed: () async{
          final response = await http.get(Uri.parse("https://the-trivia-api.com/api/questions?limit=1"));

    String responseData = utf8.decode(response.bodyBytes);
    List questionList=jsonDecode(responseData);


    print(questionList[0].runtimeType);
    print(questionList[0]['question']);
    }),);
  }
}