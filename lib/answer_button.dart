import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  AnswerButton({super.key,required this.answerText,required this.onTap});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 71, 12, 189),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40)
              ),
            child: Text(answerText,textAlign: TextAlign.center,),);
  }
}