import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class YouTubeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1F1F1F),
        appBar: AppBar(
          backgroundColor: Color(0xFF282828),
          title: Row(
            children: [
              Icon(
                FontAwesomeIcons.youtubeSquare,
                color: Colors.grey.shade300,
              ),
              Text(
                'YouTube',
                style: TextStyle(
                  wordSpacing: -1.5,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade300,
                ),
              ),
              SizedBox(
                width: 45.0,
              ),
              Icon(
                Icons.videocam,
                color: Colors.grey.shade300,
              ),
              Icon(
                Icons.search,
                color: Colors.grey.shade300,
              ),
              Icon(
                Icons.account_circle,
                color: Colors.grey.shade300,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Text('TEST'),
          ],
        ),
      ),
    );
  }
}
