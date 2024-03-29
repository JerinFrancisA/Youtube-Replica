import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_replica/video.dart';
import 'package:youtube_replica/video_list.dart';
import 'package:youtube_replica/bottom_app_bar_element.dart';

class YouTubeHome extends StatefulWidget {
  @override
  _YouTubeHomeState createState() => _YouTubeHomeState();
}

class _YouTubeHomeState extends State<YouTubeHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1F1F1F),
        appBar: AppBar(
          backgroundColor: Color(0xFF282828),
          title: Row(
            children: [
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Container(
                          width: 30.0,
                          height: 25.0,
                          child: Image.asset(
                            'images/icon.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        'YouTube',
                        style: TextStyle(
                          wordSpacing: -1.5,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Oswald',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.videocam,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.search,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.account_circle,
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (context, index) {
            return Video(
              thumbnail: videos[index]['thumbnail'],
              duration: videos[index]['duration'],
              title: videos[index]['title'],
              channelImage: videos[index]['channelImage'],
              channel: videos[index]['channel'],
              views: videos[index]['views'],
              time: videos[index]['time'],
            );
          },
        ),
        bottomNavigationBar: Material(
          child: BottomAppBar(
            color: Color(0xFF282828),
            child: Container(
              height: 48.0,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomAppBarElement(
                        icon: Icon(
                          Icons.home,
                          size: 25.0,
                        ),
                        text: Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                      BottomAppBarElement(
                        icon: Icon(
                          FontAwesomeIcons.fire,
                          size: 20.0,
                          color: Colors.grey.shade500,
                        ),
                        text: Text(
                          'Trending',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      BottomAppBarElement(
                        icon: Icon(
                          Icons.subscriptions,
                          size: 22.0,
                          color: Colors.grey.shade500,
                        ),
                        text: Text(
                          'Subscriptions',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      BottomAppBarElement(
                        icon: Icon(
                          Icons.mail,
                          size: 24.0,
                          color: Colors.grey.shade500,
                        ),
                        text: Text(
                          'Inbox',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      BottomAppBarElement(
                        icon: Icon(
                          Icons.video_library,
                          size: 22.0,
                          color: Colors.grey.shade500,
                        ),
                        text: Text(
                          'Library',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
