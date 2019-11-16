import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  final thumbnail;
  final title;
  final channelImage;
  final channel;
  final views;
  final time;

  Video(
      {@required this.thumbnail,
      @required this.title,
      @required this.channelImage,
      @required this.channel,
      @required this.views,
      @required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      child: Column(
        children: [
          Image(
            image: NetworkImage(thumbnail),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(channelImage),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: <Widget>[
                    Text(
                      title,
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      '$channel . $views views . $time age',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
