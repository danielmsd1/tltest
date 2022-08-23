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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
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
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: color2,
                        child: Icon(
                          Icons.keyboard_arrow_right,
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
