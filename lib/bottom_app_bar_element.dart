import 'package:flutter/material.dart';

class BottomAppBarElement extends StatelessWidget {
  final icon;
  final text;

  BottomAppBarElement({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        text,
      ],
    );
  }
}
