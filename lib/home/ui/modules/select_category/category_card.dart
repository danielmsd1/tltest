import 'package:flutter/material.dart';
import 'package:tltest/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.iconData,
    required this.name,
  }) : super(key: key);

  final IconData iconData;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      width: 85,
      child: Card(
        color: color4,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 13.91,
              bottom: 13.91,
              left: 2,
              right: 2,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Icon(iconData, size: 26.16, color: color1),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 3.94,
                  ),
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: color1,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
