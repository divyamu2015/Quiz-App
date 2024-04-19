import 'package:flutter/material.dart';


class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData,{super.key});

  final List <Map<String,Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data)
       => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          CircleAvatar(
            child: Text(((data['question_index'] as int) +1).toString() ),
          ),
         const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data['question'] as String,
                style:const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(
                  height: 5,
                ),
                Text(data['user_answer'] as String,
                ),
                Text(data['correct_answer'] as String,
                style:const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color:Color.fromARGB(255, 100, 22, 112),
                ),),
              ],
            ),
          )

        ],
       )).toList(),
    );
  }
}