import 'package:flutter/material.dart';

import '../info_snackbar.dart';

class ErrorSnackbar {
  static void show(BuildContext context, String message, {int durationSeconds = 5}) {
    InfoSnackbar.show(context, message, color: Colors.red, durationSeconds: durationSeconds);
  }
}