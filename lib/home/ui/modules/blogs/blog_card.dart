import 'package:flutter/material.dart';
import 'package:tltest/colors.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String image;
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 96,
      width: 170,
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: color3,
          ),
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(5.0),
          // height: 96,
          width: 167,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width,
                // height: 99.86,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: NetworkImage(image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(text),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: color3,
                ),
                width: 115,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 0.0, left: 5.0, top: 0.0, bottom: 0.0),
                  child: Row(
                    children: const [
                      Text("Read more"),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: color2,
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          // size: 22,
                          color: color4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
