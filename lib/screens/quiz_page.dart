import 'package:flutter/material.dart';

import 'answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuizPage extends StatefulWidget {
   QuizPage({super.key , required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
//var questions=currentQuestion[0];
 var currentQuestion=0;

void nextQuestion(String selectedAnswer){
  widget.onSelectAnswer(selectedAnswer);
  setState(() {
    currentQuestion++;
  });
}

  @override
  Widget build(BuildContext context) {


    final question = questions[currentQuestion];


    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Color.fromARGB(255, 238, 158, 39),
              Colors.orange,
              Color.fromARGB(255, 238, 158, 39),
              Colors.orange,
              Color.fromARGB(255, 238, 158, 39),
              Colors.orange,
              Color.fromARGB(255, 238, 158, 39),
              Colors.orange,
              Color.fromARGB(255, 238, 158, 39),
              Colors.orange,
              Color.fromARGB(255, 238, 158, 39),
              Colors.orange,
              Color.fromARGB(255, 238, 158, 39),
              Colors.orange,
              Color.fromARGB(255, 238, 158, 39),
              Colors.orange,
              Color.fromARGB(255, 238, 158, 39),
              Colors.orange,
              Color.fromARGB(255, 238, 158, 39),
              Colors.orange,
            ]
            )
            ),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(40),
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/brain.jpg',
                height: 100,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/quizback.jpg'),
              ],
            ),
            Container(
              margin:const EdgeInsets.all(10),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      Text(
                        question.text,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 49, 6, 56),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ...question.getShuffledAnswer().map((answer) =>
                          AnswerButton(
                            answerText: answer, 
                            onTap:(){
                              nextQuestion(answer);

                            }
                            
                            )),
                    
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
