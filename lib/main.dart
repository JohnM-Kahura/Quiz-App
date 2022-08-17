import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';

void main() {
  runApp(const MyApp());//root of the application
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Quiz App',// title for the application
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: QuizScreen());// this specifies the first screen to be shown when the application runs
  }
}
