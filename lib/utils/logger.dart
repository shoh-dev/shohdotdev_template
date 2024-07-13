import 'package:flutter/material.dart';

void logger(dynamic message, [String? hint]) {
  debugPrint("\n***** ${hint ?? ""} *****");
  debugPrint(message.toString());
  debugPrint("***** ${hint ?? ""} *****\n");
}
