import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.summaryData,{super.key});
  final List<Map<String,Object>> summaryData;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(children:summaryData.map((data){
          return Row(children: [
            Text(((data['question_index'] as int) +1).toString(),style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(children: [
                Text(data['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                const SizedBox(height: 5,),
                Text(data['user_answer']as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 248, 198, 133),
                  fontSize: 15,),textAlign: TextAlign.center,),
                Text(data['correct_answer']as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 156, 255, 149),
                  fontSize: 15,),textAlign: TextAlign.center)
              ],),
            )
          ],);
        }).toList(),
        ),
      ),
    );
  }
}