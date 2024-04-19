import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
    AnswerButton({super.key,required this.answerText,required this.onTap});
    
 static int index=0;
 final void Function() onTap;
 final String answerText;
  
 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding:const EdgeInsets.symmetric(vertical: 10,
            horizontal: 40),
            backgroundColor: const Color.fromARGB(255, 23, 42, 44)
          ),
          onPressed: onTap, 
          child: Text(answerText,
          textAlign: TextAlign.center,
          style:const TextStyle(
            color: Colors.white,
            fontSize: 18
          ),
          ),
         
          ),
          const SizedBox(height: 10,)
      ],
    );
      
  }
}