import 'package:assessment/helper/constant/strings_resource.dart';
import 'package:flutter/material.dart';

import '../../base/failure.dart';

class DialogUtils {
  DialogUtils._();

  static void errorDialog({
    required BuildContext context,
    required Failure failure,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Set the border radius
        ),
        title: Text(
          failure.errorCode,
          style: const TextStyle(
            color: Colors.black, // Text color
          ),
        ),
        content: Text(
          failure.errorMessage,
          style: const TextStyle(
            color: Colors.black, // Text color
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text(
              StringsResource.OK_STR,
              style: TextStyle(
                color: Colors.white, // Text color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
