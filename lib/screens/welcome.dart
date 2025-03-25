import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';

import 'counter_view.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  ShowNumber()),
      );
    });

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ).animate().fadeIn(duration: Duration(seconds: 2)),
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Animate(
                effects: [
                  FadeEffect(duration: 1.seconds),
                ],
                child: Center(
                  child: DefaultTextStyle(
                    style: GoogleFonts.pacifico(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Olá',
                          speed: const Duration(milliseconds: 500), // Velocidade da animação
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 200),
                      displayFullTextOnTap: true,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
