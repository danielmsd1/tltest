import 'package:flutter/material.dart';
import 'package:tltest/home/ui/modules/blogs/blogs.dart';
import 'package:tltest/home/ui/modules/offers_and_news/offers_and_news.dart';
import 'package:tltest/home/ui/modules/select_category/custom_category.dart';
import 'package:tltest/home/ui/modules/working_schedule/working_schedule.dart';
import 'package:tltest/utils/custom_convex_nav_bar.dart';
import 'package:tltest/utils/custom_home_appbar.dart';

class HomeUIVar extends StatelessWidget {
  const HomeUIVar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customConvexNavBar,
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
              const CustomHomeAppbar(),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 265,
                  child: ListView(
                    physics: const ScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    children: const [
                      CustomCategory(),
                      _Spacing(height: 11.4),
                      WorkingSchedule(),
                      _Spacing(height: 11.4),
                      OffersAndNews(),
                      _Spacing(height: 11.4),
                      Blogs(),
                      _Spacing(height: 55),
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

class _Spacing extends StatelessWidget {
  const _Spacing({Key? key, required this.height}) : super(key: key);

  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
