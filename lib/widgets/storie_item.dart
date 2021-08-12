import 'package:flutter/material.dart';

class StorieItem extends StatelessWidget {
  final String name;
  final String urlPhoto;
  final bool isLive;
  final bool isProfile;

  StorieItem({
    Key? key,
    required this.name,
    required this.urlPhoto,
    required this.isLive,
    required this.isProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 75,
          width: 67,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 69,
                width: 69,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.red,
                  gradient: isLive || isProfile
                      ? LinearGradient(
                          colors: [Color(0xff5B00C4), Color(0xffD00049)],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )
                      : LinearGradient(
                          colors: [Color(0xff9E2692), Color(0xffFAA958)],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                ),
              ),
              Container(
                height: 62,
                width: 62,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.white,
                ),
              ),
              Align(
                child: CircleAvatar(
                  maxRadius: 29,
                  backgroundImage: isProfile
                      ? Image.asset('assets/images/avatar.jpg').image
                      : NetworkImage(urlPhoto),
                ),
              ),
              if (isProfile)
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 28,
                    width: 28,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      // radius: 13,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              if (isLive)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    height: 13,
                    width: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      gradient: LinearGradient(
                        colors: [Color(0xffC7059A), Color(0xffDD0E44)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Text(
                      'AO VIVO',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
            ],
          ),
        ),
        SizedBox(height: 4),
        FittedBox(
          fit: BoxFit.fitHeight,
          child: Text(
            name,
          ),
        )
      ],
    );
  }
}
