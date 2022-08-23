import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tltest/colors.dart';

ConvexAppBar customConvexNavBar = ConvexAppBar(
  backgroundColor: color2,
  style: TabStyle.reactCircle,
  items: const [
    TabItem(
      icon: Icons.home,
      title: "Home",
    ),
    TabItem(
      icon: Icons.wallet,
      title: "Wallet",
    ),
    TabItem(
      icon: FontAwesomeIcons.peopleGroup,
      title: "Community",
    ),
    TabItem(
      icon: Icons.work,
      title: "Works",
    ),
  ],
  initialActiveIndex: 1,
  onTap: (int i) => print('click index=$i'),
);
