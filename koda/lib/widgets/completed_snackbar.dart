import 'package:flutter/material.dart';

import '../models/global.dart';
import '../utilities/message_type.dart';

//TODO: make this better
void showCorrectSnackBar(BuildContext context, bool correct) {
  String ret = (correct) ? "Correct: " : "Incorrect: ";
  ret += "\n${Global.getRandomMessage((correct) ? MessageType.passed : MessageType.failed)}";
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        ret,
      ),
    ),
  );
}
