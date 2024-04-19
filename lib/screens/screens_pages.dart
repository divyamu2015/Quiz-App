import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/quiz_page.dart';
import 'home_page.dart';
import 'result_screen.dart';
//import 'quiz_page.dart';

// ignore: must_be_immutable
class ScreenPages extends StatefulWidget {
   const  ScreenPages({super.key});

  @override
  State<ScreenPages> createState() => _ScreenPagesState();
}

class _ScreenPagesState extends State<ScreenPages> {

 List<String> selectedAnswer=[];
 var activeScreen='home-page';
  void switchScreen(){
    setState(() {
      activeScreen='quiz-page';
    });
  }

  void  chooseAnswer(String answer){
    selectedAnswer.add(answer);

    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen='result-screen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      selectedAnswer=[];
      activeScreen='quiz-page';

    });
  }
  @override
  Widget build(BuildContext context) {
    Widget screenWidget =HomePage(switchScreen);

    if (activeScreen == 'quiz-page') {
      screenWidget=QuizPage(
        onSelectAnswer: chooseAnswer,);
    }

    if (activeScreen == 'result-screen') {
      screenWidget= ResultScreen(
        chosenAnswer:selectedAnswer,
        onRestart: restartQuiz
        
        );
      
    }


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: screenWidget,

    );
  }
}