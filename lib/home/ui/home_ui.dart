import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tltest/home/ui/modules/appbar/custom_appbar.dart';
import 'package:tltest/home/ui/modules/blogs/blogs.dart';
import 'package:tltest/home/ui/modules/offers_and_news/offers_and_news.dart';
import 'package:tltest/home/ui/modules/select_category/custom_category.dart';
import 'package:tltest/home/ui/modules/working_schedule/working_schedule.dart';

import '../../colors.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: color2,
        style: TabStyle.react,
        items: const [
          TabItem(
            icon: Icons.home,
            title: "Home",
            activeIcon: CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.home,
                color: color1,
              ),
            ),
          ),
          TabItem(
            icon: Icons.wallet,
            title: "Wallet",
            activeIcon: CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.home,
                color: color1,
              ),
            ),
          ),
          TabItem(
            icon: FontAwesomeIcons.peopleGroup,
            title: "Community",
            activeIcon: CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.home,
                color: color1,
              ),
            ),
          ),
          TabItem(
            icon: Icons.work,
            title: "Works",
            activeIcon: CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.home,
                color: color1,
              ),
            ),
          ),
        ],
        initialActiveIndex: 1,
        onTap: (int i) => print('click index=$i'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomAppbar(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 270,
                  child: ListView(
                    physics: const ScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    children: const [
                      CustomCategory(),
                      SizedBox(
                        height: 11.4,
                      ),
                      WorkingSchedule(),
                      SizedBox(
                        height: 11.4,
                      ),
                      OffersAndNews(),
                      SizedBox(
                        height: 11.4,
                      ),
                      Blogs(),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
