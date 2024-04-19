import 'package:quiz_app/screens/answer_button.dart';

class QuizQuestion{
  final String text;
  final List<String> answers;
 
  QuizQuestion(this.text,this.answers);

 List<String> getShuffledAnswer(){
  final shuffledList=List.of(answers);
  shuffledList.shuffle();
  return shuffledList;
 }

  map(AnswerButton Function(dynamic answer) param0) {}
}