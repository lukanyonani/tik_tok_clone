import 'package:flutter/material.dart';
import 'package:tik_tok/widgets/video_app.dart';

class PostItem extends StatefulWidget {
  final String videoAsset;
  final String pictureAsset;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfSaves;
  final String numberOfShares;
  final String accountUsername;
  final String songName;

  const PostItem({
    super.key,
    required this.videoAsset,
    required this.pictureAsset,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfSaves,
    required this.numberOfShares,
    required this.accountUsername,
    required this.songName,
  });

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoApp(
          videoUrl: widget.videoAsset,
        ),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(widget.pictureAsset),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        // Perform action for button 1
                      },
                      child: Icon(
                        Icons.favorite,
                        size: 42,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    Text(
                      widget.numberOfLikes,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 16.0),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        // Perform action for button 2
                      },
                      child: Icon(
                        Icons.comment,
                        size: 42,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    Text(
                      widget.numberOfComments,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 16.0),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        // Perform action for button 2
                      },
                      child: Icon(
                        Icons.bookmark,
                        size: 42,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    Text(
                      widget.numberOfSaves,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 16.0),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        // Perform action for button 2
                      },
                      child: Icon(
                        Icons.share,
                        size: 42,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    Text(
                      widget.numberOfShares,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 100.0),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 64, left: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: widget.accountUsername,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' - ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '03-14',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Icon(
                    Icons.music_note,
                    color: Colors.white,
                    size: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: widget.songName,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
