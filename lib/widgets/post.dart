import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_ui_clone/models/storieData.dart';

class Post extends StatelessWidget {
  Post({Key? key}) : super(key: key);

  final String userName = faker.internet.userName();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  faker.image.image(
                    height: 60,
                    width: 60,
                    keywords: ['face'],
                    random: true,
                  ),
                ),
              ),
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
        Image.network(
          faker.image.image(
            height: 700,
            width: 700,
            keywords: ['nature', 'dog'],
            random: true,
          ),
          fit: BoxFit.fitWidth,
          cacheHeight: 700,
          cacheWidth: 700,
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
                )),
            IconButton(
              visualDensity: VisualDensity.compact,
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/Comment.svg',
                height: 24,
                width: 24,
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
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${faker.randomGenerator.integer(15000)} curtidas',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
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
              SizedBox(height: 4),
              Text(
                'Ver todos os ${faker.randomGenerator.integer(80)} comentários',
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
