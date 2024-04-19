import 'package:quiz_app/models/question_screen.dart';

final questions = [
  QuizQuestion('What are the main building blocks of Flutter UIs? ',
   [
    'Widgets',
    'Components',
    'Blocks',
    'Functions'
   ],
   
   ),
   QuizQuestion('How are Flutter UIs built',
    [
      'By combining widgets in code',
      'By combining widgets in visual editor',
      'By defining widgets in config files',
      'by using XCode for IOS and Android Studio for Android'
    ],
    ),
    QuizQuestion('What is the purpose of a statefulwidgets?',
     [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data'
     ],
     ),
     QuizQuestion('Which widget should you try to use more often: StatelessWidget or StatefulWidgets', 
     [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above'
     ],
     ),
     QuizQuestion('What happens if you change data in a StatelessWidgets?', 
     [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated'
     ],
     ),
     QuizQuestion('How should you update data inside of StatefulWidgets?',
      [
        'By calling setState()',
        'By calling UpdateData()',
        'By calling updateUI()',
        'By calling updateState()'
      ],
    ),
    

];

