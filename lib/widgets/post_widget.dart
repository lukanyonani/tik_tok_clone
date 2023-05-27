import 'package:flutter/material.dart';
import 'package:tik_tok/widgets/post_item.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: pageController,
            scrollDirection: Axis.vertical,
            children: const [
              PostItem(
                videoAsset: 'assets/videos/video1.mp4',
                pictureAsset: 'assets/sne.jpeg',
                numberOfLikes: '277.2K',
                numberOfComments: '1740',
                numberOfSaves: '13.0K',
                numberOfShares: '11.0K',
                accountUsername: '@walker_yummy',
                songName: 'ShaunMusiQ Ftears& Xduppy - Bhebha',
              ),
              PostItem(
                videoAsset: 'assets/videos/video2.mp4',
                pictureAsset: 'assets/jenna.jpeg',
                numberOfLikes: '386.3K',
                numberOfComments: '1539',
                numberOfSaves: '12.1K',
                numberOfShares: '2993',
                accountUsername: '@jennajacobzzzz',
                songName: 'Pcee Sgija Disciples & Zan Ten - Kilimanjaro',
              ), //
              PostItem(
                videoAsset: 'assets/videos/video3.mp4',
                pictureAsset: 'assets/the.jpeg',
                numberOfLikes: '187.5K',
                numberOfComments: '204',
                numberOfSaves: '9.4K',
                numberOfShares: '1.2K',
                accountUsername: '@tatiandtubby',
                songName: 'Tyler ICU & Tumelo_za - Mnike',
              ),
              PostItem(
                videoAsset: 'assets/videos/video4.mp4',
                pictureAsset: 'assets/khe.jpeg',
                numberOfLikes: '300.4K',
                numberOfComments: '1614',
                numberOfSaves: '14.2K',
                numberOfShares: '1.0K',
                accountUsername: '@khethiwetwala',
                songName: 'ShaunMusiQ Ftears& Xduppy - Bhebha',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 48.0),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Following ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                          const TextSpan(
                              text: "|",
                              style: TextStyle(
                                fontSize: 18,
                              )),
                          const TextSpan(
                            text: ' For You',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.8),
            selectedFontSize: 12.0,
            unselectedFontSize: 12.0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Friends',
              ),
              BottomNavigationBarItem(
                icon: customCreateIcon,
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.messenger_outline),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: 'Profile',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget get customCreateIcon => Container(
        width: 45.0,
        height: 27.0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 11.0),
              width: 42,
              decoration: BoxDecoration(
                  color: Color.fromARGB(225, 250, 45, 108),
                  borderRadius: BorderRadius.circular(7.0)),
            ),
            Container(
              margin: EdgeInsets.only(right: 11.0),
              width: 45,
              decoration: BoxDecoration(
                  color: Color.fromARGB(225, 32, 211, 234),
                  borderRadius: BorderRadius.circular(7.0)),
            ),
            Container(
              width: 38,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0)),
              child: Icon(
                Icons.add,
                size: 24.0,
                color: Colors.black,
              ),
            )
          ],
        ),
      );
}
