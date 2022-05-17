import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

enum SuccessOrError { success, error }

flushBar(BuildContext context, String message, SuccessOrError successOrError) {
  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    icon: const Icon(
      Icons.error,
      color: Colors.white,
    ),
    messageText: Text(message,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .displayMedium
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
    backgroundColor:
        successOrError == SuccessOrError.success ? Colors.green : Colors.red,
    borderWidth: 2,
    borderRadius: BorderRadius.circular(8),
    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    duration: const Duration(milliseconds: 2500),
  ).show(context);
}
