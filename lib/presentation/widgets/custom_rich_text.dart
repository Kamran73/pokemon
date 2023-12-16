import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String questionText;
  final String actionAbleText;
  final VoidCallback onTap;

  const CustomRichText(
      {super.key,
      required this.questionText,
      required this.actionAbleText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: questionText,
          style: const TextStyle(color: Colors.black87),
          children: [
            TextSpan(
              text: actionAbleText,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            )
          ]),
    );
  }
}
