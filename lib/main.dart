import 'package:flutter/material.dart';
import 'package:youtube_replica/you_tube_home.dart';

main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'YouTube',
        home: YouTubeHome(),
        theme: ThemeData.dark(),
      ),
    );
