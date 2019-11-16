import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_replica/video.dart';

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
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
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
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.videocam,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.account_circle,
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Video(
                  thumbnail:
                  'https://i.ytimg.com/vi/5NxKNrfqUjs/maxresdefault.jpg',
                  title: 'SIDEMEN \$20,000 VS \$200 HOLIDAY (EUROPE EDITION)',
                  channelImage:
                  'https://pbs.twimg.com/profile_images/1140596536205877248/2UYQ4X8a_400x400.jpg',
                  channel: 'Sidemen',
                  views: '12.3 M',
                  time: '1 month',
                ),
                Video(
                  thumbnail:
                  'https://i.ytimg.com/vi/AFP-GlX3HjQ/maxresdefault.jpg',
                  title: 'Queen - Bohemian Rhapsody HD',
                  channelImage:
                  'https://yt3.ggpht.com/a/AGF-l7-hRQSYueq9V3KtUAlGUT-OYvpEXIduBulF_A=s900-c-k-c0xffffffff-no-rj-mo',
                  channel: 'Queen Official',
                  views: '1 B',
                  time: '11 years',
                ),
                Video(
                  thumbnail:
                  'https://i.ytimg.com/vi/pRpeEdMmmQ0/maxresdefault.jpg',
                  title: 'Shakira - Waka Waka (This Time for Africa) (The Official 2010 FIFA World Cup™ Song)',
                  channelImage:
                  'https://404store.com/2018/06/16/shakira-youtube-2017.jpg',
                  channel: 'Shakira',
                  views: '2.3 B',
                  time: '9 years',
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items:),
      ),
    );
  }
}
