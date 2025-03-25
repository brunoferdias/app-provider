import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class NeumorphicActionButton extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;

  const NeumorphicActionButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: onPressed,
      style: NeumorphicStyle(
        color: Colors.grey[300]!,
        depth: 5,
        intensity: 0.8,
        surfaceIntensity: 0.4,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
        shadowLightColor: Colors.white,
        shadowDarkColor: Color.fromARGB(255, 101, 99, 99),
        shape: NeumorphicShape.convex,
      ),
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Container(
        height: 60,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
