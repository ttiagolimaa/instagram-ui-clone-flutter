import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_ui_clone/models/storie.dart';
import 'package:instagram_ui_clone/models/storieData.dart';
import 'package:instagram_ui_clone/widgets/header.dart';
import 'package:instagram_ui_clone/widgets/post.dart';
import 'package:instagram_ui_clone/widgets/stories.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Storie> listProfiles = StorieData.listStories
      .skipWhile((value) => value.isProfile == true)
      .toList()
        ..shuffle();

  String getRandomImageSrc() {
    final number = faker.randomGenerator.integer(6, min: 1);
    return 'assets/images/post$number.jpeg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(Duration(milliseconds: 500));
          setState(() {
            listProfiles..shuffle();
          });
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stories(),
              ...listProfiles.take(5).map((e) => Post(
                  userName: e.name,
                  srcPhotoProfile: e.srcPhoto,
                  srcPhotoPost: getRandomImageSrc()))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/Home.svg',
                height: 25,
                width: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/Search.svg',
                height: 25,
                width: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/Reels.svg',
                height: 23,
                width: 23,
              ),
              label: ''),
          BottomNavigationBarItem(
              tooltip: null,
              icon: SvgPicture.asset(
                'assets/svg/Shop.svg',
                height: 25,
                width: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                CircleAvatar(
                  radius: 11,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
                SizedBox(height: 2),
                CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.orange.shade800,
                ),
              ],
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
