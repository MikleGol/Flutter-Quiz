import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252),
                fontSize: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton.icon(
                onPressed: () {
                  startQuiz();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    foregroundColor: Colors.white),
                icon: const Icon(Icons.arrow_right),
                label: const Text('Start Quiz')),
          )
        ],
      ),
    );
  }
}
