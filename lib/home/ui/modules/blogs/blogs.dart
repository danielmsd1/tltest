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
              style: titleRowsTextStyle,
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
                text: blogSampleBody,
              ),
              BlogCard(
                image: blog2,
                title: "Indoor Plants",
                text: blogSampleBody,
              ),
              BlogCard(
                image: blog3,
                title: "Home Cleaning",
                text: blogSampleBody,
              ),
            ],
          ),
        )
      ],
    );
  }
}
