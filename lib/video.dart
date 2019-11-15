import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Image(
              image: NetworkImage(''),
            ),
          ),
        ],
      ),
    );
  }
}
