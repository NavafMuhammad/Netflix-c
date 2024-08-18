import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/download/screen_download.dart';
import 'package:netflix/presentation/widgets/appbar_widget.dart';
import 'package:netflix/presentation/widgets/main_title_22.dart';
import 'package:netflix/presentation/widgets/text_icon_button_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget(
            child: AppBarWidgetTitle(title: 'New & Hot'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              dividerHeight: 0,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelColor: kBlackColor,
              unselectedLabelColor: kGreyColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  color: kWhiteColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30)),
              tabs: const [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: '👀 Everyone\'s Watching',
                ),
              ],
            ),
            kHeight15,
            Expanded(
              child: TabBarView(children: [
                _buildComingSoon(size),
                _buildEveryonesWatching(),
              ]),
            )
          ],
        ),
      ),
    );
  }

  _buildComingSoon(Size size) {
    return ListView(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 55,
              height: size.width * 1.28,
              child: const Column(
                children: [
                  Text(
                    'FEB',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '11',
                    style: TextStyle(
                        fontSize: 35,
                        letterSpacing: 4,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width - 55,
              height: size.width * 1.28,
              child: const Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://image.tmdb.org/t/p/original/koY8N9Y8IcLlb2eJXz50X1hFUL5.jpg')),
                  ),
                  Padding(
                    padding: kPadding10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'NARUTO',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                TextIconButtonWidget(
                                  title: 'Remind Me',
                                  icon: CupertinoIcons.bell,
                                  iconSize: 22,
                                  textSize: 11,
                                ),
                                TextIconButtonWidget(
                                  title: 'Info',
                                  icon: Icons.info_outline_rounded,
                                  iconSize: 22,
                                  textSize: 11,
                                ),
                              ],
                            )
                          ],
                        ),
                        MainTitle22(title: 'Naruto'),
                        Text(
                          '''In the Village Hidden in the Leaves, there are few things Naruto and Choji love more than a steaming bowl of Ichiraku ramen, and when the daughter of the owner is kidnapped, they're on the case. Then, missions for the Leaf ninja lead them to the Land of Bears after a fallen meteorite and the Land of Greens to protect a princess. When an evil ninja who's after the princess gets in their way, it's Naruto's life on the line!,''',
                          style: TextStyle(fontSize: 13, ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  _buildEveryonesWatching() {
    return SizedBox();
  }
}

// AppBar(
//           title: const AppBarWidgetTitle(title: 'New & Hot'),
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.cast,
//                   size: 30,
//                 )),
//             kWidth10,
//             Container(
//               width: 28,
//               height: 28,
//               color: Colors.blue,
//             ),
//             kWidth10,
//           ],
//           bottom: const TabBar(tabs: [
//             Tab(
//               text: '🍿 Coming Soon',
//             ),
//             Tab(
//               text: '👀 Everyone\'s Watching',
//             ),
//           ]),
//         ),
