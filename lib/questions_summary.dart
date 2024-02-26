import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summartyData, {super.key});

  final List<Map<String, Object>> summartyData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summartyData.map(
            (data) {
              final Color indexBgColor;
              if (data["correct_answer"] == data["user_answer"]) {
                indexBgColor = const Color.fromARGB(255, 150, 198, 241);
              } else {
                indexBgColor = const Color.fromARGB(255, 249, 133, 241);
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: indexBgColor,
                    ),
                    child: Text(
                      ((data["question_index"] as int) + 1).toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 22, 2, 56),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data["question"] as String,
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data["user_answer"] as String,
                          style: TextStyle(color: Colors.pink[300]),
                        ),
                        Text(
                          data["correct_answer"] as String,
                          style: const TextStyle(color: Colors.lightBlue),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
