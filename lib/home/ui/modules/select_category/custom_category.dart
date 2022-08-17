import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tltest/home/ui/modules/select_category/category_card.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Select Category",
              style: TextStyle(fontSize: 23),
            ),
            TextButton(
              onPressed: null,
              child: Text(
                "View All",
                style: TextStyle(fontSize: 23),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CategoryCard(
              iconData: FontAwesomeIcons.paintRoller,
              name: "Painter",
            ),
            CategoryCard(
              iconData: FontAwesomeIcons.plug,
              name: "Electrician",
            ),
            CategoryCard(
              iconData: Icons.plumbing,
              name: "Plumbing",
            ),
            CategoryCard(
              iconData: Icons.cleaning_services,
              name: "Cleaning",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CategoryCard(
              iconData: FontAwesomeIcons.truckMoving,
              name: "Moving",
            ),
            CategoryCard(
              iconData: FontAwesomeIcons.taxi,
              name: "Taxi",
            ),
            CategoryCard(
              iconData: FontAwesomeIcons.fish,
              name: "Fish",
            ),
            CategoryCard(
              iconData: Icons.celebration,
              name: "Events",
            ),
          ],
        )
      ],
    );
  }
}
