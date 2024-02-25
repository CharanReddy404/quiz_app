import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(const Quiz());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 95, 4, 111),
//                 Color.fromARGB(255, 69, 2, 81),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Image.asset(
//                   "assets/images/quiz-logo.png",
//                   width: 250,
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 const Text(
//                   "Learn Flutter the fun way",
//                   style: TextStyle(color: Colors.white, fontSize: 26),
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 OutlinedButton(
//                   onPressed: () {},
//                   child: const Text(
//                     "Start Quiz",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
