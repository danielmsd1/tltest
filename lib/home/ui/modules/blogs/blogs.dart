import 'package:flutter/material.dart';
import 'package:tltest/constants.dart';
import 'package:tltest/home/ui/modules/blogs/blog_card.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Blogs",
              style: TextStyle(fontSize: 23),
            ),
          ],
        ),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
            children: const [
              BlogCard(
                image: blog1,
                title: "Interior Design",
                text:
                    "Best architecture firm for home construction and interior designing at best rate.",
              ),
              BlogCard(
                image: blog2,
                title: "Indoor Plants",
                text:
                    "Best architecture firm for home construction and interior designing at best rate.",
              ),
              BlogCard(
                image: blog3,
                title: "Home Cleaning",
                text:
                    "Best architecture firm for home construction and interior designing at best rate.",
              ),
            ],
          ),
        )
      ],
    );
  }
}
