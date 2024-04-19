import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'questions_summary.dart.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer, required this.onRestart,});

  final List<String> chosenAnswer;
  final  void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i]
      });
    }

    return summary;
  }
  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.amberAccent,
                Colors.orange,
                Color.fromARGB(255, 190, 133, 46),
                Color.fromARGB(255, 138, 90, 19)
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //     padding: const EdgeInsets.all(40),
              //     alignment: Alignment.topCenter,
              //     child: Image.asset(
              //       'assets/images/mission.jpg',
              //       height: 50,
              //     )),
              SizedBox(
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.all(40),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                    'assets/images/mission.jpg',
                    height: 100,
                  ),
                  const SizedBox(
                    height: 20,

                  ),
                        Text(
                          '''Your answered $numCorrectQuestions out of $numTotalQuestions questions correctly!''',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 24),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        QuestionSummary(summaryData),
                        const SizedBox(
                          height: 30,
                        ),
                        OutlinedButton.icon(
                            onPressed: onRestart,
                            icon: const Icon(Icons.restart_alt),
                            label: const Text(
                              'Restart Quiz',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
