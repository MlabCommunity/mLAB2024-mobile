import 'package:flutter/material.dart';

extension AddPadding on Widget {
  Widget addPadding({required EdgeInsetsGeometry padding}) {
    return Padding(
      padding: padding,
      child: this,
    );
  }
}
