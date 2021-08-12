import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_ui_clone/models/storieData.dart';
import 'package:instagram_ui_clone/widgets/storie_item.dart';

class Stories extends StatelessWidget {
  Stories({Key? key}) : super(key: key);

  final faker = new Faker();
  final storiesList = StorieData.listStories;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: 111,
          width: size.width,
          padding: EdgeInsets.symmetric(vertical: 8),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: storiesList.length,
            padding: EdgeInsets.symmetric(horizontal: 16),
            separatorBuilder: (context, index) => SizedBox(width: 16),
            itemBuilder: (context, index) => StorieItem(
              name: storiesList[index].name,
              srcPhoto: storiesList[index].srcPhoto,
              isLive: storiesList[index].isLive,
              isProfile: storiesList[index].isProfile,
            ),
          ),
        ),
        Divider(height: 0),
      ],
    );
  }
}
