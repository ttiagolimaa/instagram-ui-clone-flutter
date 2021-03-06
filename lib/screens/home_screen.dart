import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_ui_clone/models/profilePost.dart';
import 'package:instagram_ui_clone/models/storieData.dart';
import 'package:instagram_ui_clone/widgets/header.dart';
import 'package:instagram_ui_clone/widgets/post.dart';
import 'package:instagram_ui_clone/widgets/stories.dart';

class HomeScreen extends StatefulWidget {
  final void Function() chageThemeMode;

  HomeScreen({Key? key, required this.chageThemeMode}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ProfilePost> listProfiles = StorieData.listStories
      .skipWhile((value) => value.isProfile == true)
      .map((e) {
    final number = faker.randomGenerator.integer(6, min: 1);
    final srcPhotoPost = 'assets/images/post$number.jpeg';
    return ProfilePost(
        name: e.name, srcPhotoProfile: e.srcPhoto, srcPhotoPost: srcPhotoPost);
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        chageThemeMode: widget.chageThemeMode,
      ),
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
                  srcPhotoProfile: e.srcPhotoProfile,
                  srcPhotoPost: e.srcPhotoPost))
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
                color: Theme.of(context).iconTheme.color,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/Search.svg',
                height: 25,
                width: 25,
                color: Theme.of(context).iconTheme.color,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/Reels.svg',
                height: 23,
                width: 23,
                color: Theme.of(context).iconTheme.color,
              ),
              label: ''),
          BottomNavigationBarItem(
              tooltip: null,
              icon: SvgPicture.asset(
                'assets/svg/Shop.svg',
                height: 25,
                width: 25,
                color: Theme.of(context).iconTheme.color,
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
