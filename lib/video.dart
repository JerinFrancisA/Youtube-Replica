import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Video extends StatelessWidget {
  final thumbnail;
  final duration;
  final title;
  final channelImage;
  final channel;
  final views;
  final time;

  Video(
      {@required this.thumbnail,
      @required this.duration,
      @required this.title,
      @required this.channelImage,
      @required this.channel,
      @required this.views,
      @required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280.0,
      child: Column(
        children: [
          Container(
            height: 200.0,
            child: Stack(
              children: [
                Image(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          duration,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 6.0,
                    right: 10.0,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(channelImage),
                    radius: 20.0,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          title,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '$channel · $views views · $time age',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.ellipsisV,
                  size: 18.0,
                ),
                onPressed: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
