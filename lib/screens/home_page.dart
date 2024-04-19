import 'package:flutter/material.dart';


//import 'quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.quizPage ,{super.key});
  
  final void Function() quizPage;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(

        body: Stack(
          children: [
            Container(
              decoration:const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors:<Color>[
                    Color.fromARGB(255, 122, 111, 7),
                      Color.fromARGB(255, 248, 173, 60)
              


                  ])
              ),
              

            ),
           Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Image.asset(
                  'assets/images/quiz.jpg',
                  height: 300,
                  ),
                   const SizedBox(
                  height: 50,
                   ),
                 const Text('Learn Flutter the fun way!',
                 style: TextStyle(
                 color: Color.fromARGB(255, 49, 6, 56),
                        fontWeight: FontWeight.bold,
                    fontSize: 29,
                  
                 ),
                 ),
                 const SizedBox(
                  height: 20,
                 ),
                 OutlinedButton.icon(
                  onPressed:quizPage,
                 icon:const Icon(Icons.start,
                color: Color.fromARGB(255, 49, 6, 56),
                           
                 size: 30,),
                 label:const Text('Start Quiz',
                   style: TextStyle(
                    color: Color.fromARGB(255, 49, 6, 56),
                        fontSize: 25,
                    fontWeight: FontWeight.bold,
                   ),) ,
                 
                   ),
               ],
             ),
           )
            

          ],
        ),
      ));
  }
}