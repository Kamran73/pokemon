import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorStateWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const ErrorStateWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            CupertinoIcons.refresh,
            color: Colors.red,
            size: 30,
          )),
    );
  }
}
