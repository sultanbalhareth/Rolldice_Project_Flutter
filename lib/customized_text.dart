import "package:flutter/material.dart";

class CustomiedText extends StatelessWidget {
  const CustomiedText(this.text,
      {super.key}); // important .. used to send key named parameter to the statelessWidget Super Class

  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 24),
    );
  }
}
