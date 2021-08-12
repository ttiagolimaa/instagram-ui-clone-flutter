import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarCustom extends StatelessWidget with PreferredSizeWidget {
  final void Function() chageThemeMode;

  AppbarCustom({
    Key? key,
    required this.chageThemeMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/svg/Instagram_logo.svg',
              fit: BoxFit.cover,
              height: 56,
              color: Theme.of(context).iconTheme.color,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: chageThemeMode,
                    icon: Icon(Theme.of(context).iconTheme.color == Colors.white
                        ? Icons.light_mode
                        : Icons.dark_mode)),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svg/Add-Icon-Filled.svg',
                    height: 20,
                    width: 20,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svg/Heart.svg',
                    height: 20,
                    width: 20,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svg/Union.svg',
                    height: 17,
                    width: 17,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
