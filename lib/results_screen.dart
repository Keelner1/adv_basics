import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  List<Map<String,Object>>getSummaryData(){
    final List<Map<String,Object>> summary = [];
    for (int i=0;i<chosenAnswers.length;i++) {
      summary.add({
        'quesiton_index':i,
        'question': questions[i],
        'correct_answer':questions[i].answers[0],
        'user_answer':chosenAnswers[i]
        });
        if(true){
          
        }
        if(true){
          
        }
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x out of y'),
            const SizedBox(height: 30,),
            const Text('ListofQuestions'),
            TextButton(onPressed: (){}, child: const Text('RestartQuiz'))
          ],
        ),
      ),
    );
  }
}