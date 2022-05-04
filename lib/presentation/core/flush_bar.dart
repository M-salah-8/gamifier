import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

enum SuccessOrError { success, error }

flushBar(BuildContext context, String message, SuccessOrError successOrError) {
  Flushbar(
    messageText: Center(
      child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              border: Border.all(
                width: 2,
                color: successOrError == SuccessOrError.success
                    ? Theme.of(context).primaryColor
                    : Colors.red,
              ),
              borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          child: Text(message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayMedium)),
    ),

    backgroundColor: Colors.transparent,
    // borderColor: successOrError == SuccessOrError.success
    //     ? Theme.of(context).primaryColor
    //     : Colors.red,
    borderWidth: 2,
    borderRadius: BorderRadius.circular(8),
    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    duration: const Duration(seconds: 2),
  ).show(context);
}
