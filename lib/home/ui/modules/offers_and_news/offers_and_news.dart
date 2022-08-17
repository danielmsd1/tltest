import 'package:flutter/material.dart';
import 'package:tltest/home/ui/modules/offers_and_news/offer_card.dart';

class OffersAndNews extends StatelessWidget {
  const OffersAndNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Offers & News",
              style: TextStyle(fontSize: 23),
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
            children: const [
              OfferCard(
                  image: "assets/images/lamps.png",
                  title: "20% OFFER ON CEILING LIGHTS",
                  subtitle: "Check the best deals for you ..."),
              OfferCard(
                  image: "assets/images/chair.png",
                  title: "BEST CHAIRS",
                  subtitle: "Check the new designs"),
            ],
          ),
        )
      ],
    );
  }
}
