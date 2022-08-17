import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz_app/data/data.dart';
class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

Future<List> getTrivia()async{
  final res =await http.get(Uri.parse("https://the-trivia-api.com/api/questions?limit=15"));
String responseData = utf8.decode(res.bodyBytes);
    List questionList=jsonDecode(responseData);
    
    return  questionList;
}

List<Question> getQuestions() {
 

  

  
  List<Question> list = [];
  

  
List questionList=data;
questionList.shuffle();
  
for (int i =0;i<questionList.length;i++){
  list.add(
    Question(
    questionList[i]["question"],
    [
      Answer(questionList[i]["incorrectAnswers"][0], false),
      Answer(questionList[i]["correctAnswer"], true),
      Answer(questionList[i]["incorrectAnswers"][1], false),
      Answer(questionList[i]["incorrectAnswers"][2], false),
    ],
  )
  );
}
  return list;
 


  

  
}
