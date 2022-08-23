import 'package:flutter/material.dart';
import 'package:tltest/colors.dart';

// Other pages apart from home are using this app bar.
// required attribute, title of the pages must be provided.

class CustomAppAppbar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppAppbar({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: color2,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.chevron_left),
      ),
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_active,
            color: color4,
            size: 18.75,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.window,
            color: color4,
            size: 24,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
