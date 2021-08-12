import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:instagram_ui_clone/models/storieData.dart';

class Post extends StatelessWidget {
  final String userName;
  final String srcPhotoProfile;
  final String srcPhotoPost;

  Post({
    Key? key,
    required this.userName,
    required this.srcPhotoProfile,
    required this.srcPhotoPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              CircleAvatar(backgroundImage: Image.asset(srcPhotoProfile).image),
              SizedBox(width: 8),
              Text(
                userName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
        Container(
          height: 469,
          color: Colors.red,
          child: Image.asset(
            srcPhotoPost,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: [
            IconButton(
                visualDensity: VisualDensity.compact,
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/svg/Heart.svg',
                  height: 24,
                  width: 24,
                  color: Theme.of(context).iconTheme.color,
                )),
            IconButton(
              visualDensity: VisualDensity.compact,
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/Comment.svg',
                height: 24,
                width: 24,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            IconButton(
              visualDensity: VisualDensity.compact,
              padding: EdgeInsets.zero,
              iconSize: 20,
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/Union.svg',
                height: 17,
                width: 20,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            Spacer(),
            IconButton(
              visualDensity: VisualDensity.compact,
              padding: EdgeInsets.zero,
              iconSize: 20,
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/Bookmark.svg',
                height: 24,
                width: 24,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${faker.randomGenerator.integer(15000)} curtidas',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                    text: '',
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                          text: userName,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '  ${faker.lorem.sentences(4).join(' ')}'),
                    ]),
                maxLines: 2,
              ),
              SizedBox(height: 8),
              Text(
                'Ver todos os ${faker.randomGenerator.integer(80, min: 15)} comentários',
                style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
              )
            ],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
