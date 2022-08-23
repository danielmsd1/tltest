import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tltest/colors.dart';
import 'package:tltest/constants.dart';

class EnablerCard extends StatelessWidget {
  const EnablerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 116,
          child: Row(
            children: [
              const _EnablerImage(),
              Expanded(
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                  child: Column(
                    children: [
                      const _VerifiedAndApprovedStatusRow(),
                      const _EnablerName(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          _LocationDetails(),
                          // chevron icon
                          Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                            size: 25,
                          ),
                        ],
                      ),
                      const _Spacing(height: 10),
                      const _StarRatingInfoAndReview(),
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

// Verification, approved and moneyCheck rating row.
class _VerifiedAndApprovedStatusRow extends StatelessWidget {
  const _VerifiedAndApprovedStatusRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.verified,
          color: color5,
          size: 20,
        ),
        const _Spacing(width: 2.82),
        const SizedBox(
          height: 30,
          child: Chip(
            backgroundColor: color5,
            label: Text(
              "Approved",
              style: TextStyle(color: color4, fontSize: 10),
            ),
          ),
        ),
        const _Spacing(width: 5),
        RatingBarIndicator(
          rating: 8.2,
          itemCount: 5,
          itemPadding: const EdgeInsets.only(left: 3),
          itemSize: 10.0,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, _) => const Icon(
            FontAwesomeIcons.moneyCheck,
            size: 10,
            color: color5,
          ),
        ),
        const _Spacing(width: 10),
        const Icon(
          FontAwesomeIcons.solidHeart,
          color: color3,
        )
      ],
    );
  }
}

// The image of an enabler.
class _EnablerImage extends StatelessWidget {
  const _EnablerImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color4,
          image: const DecorationImage(
            image: NetworkImage(enablerSampleImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// The name of an enabler.
class _EnablerName extends StatelessWidget {
  const _EnablerName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            "Sijo Simon",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: "InterUI",
            ),
          ),
        ],
      ),
    );
  }
}

// Location details
class _LocationDetails extends StatelessWidget {
  const _LocationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.location_on,
          size: 20,
        ),
        _Spacing(width: 10),
        Text(
          "Trovanddrim, Palayam",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        _Spacing(height: 10),
      ],
    );
  }
}

// The star rating and reviews information
class _StarRatingInfoAndReview extends StatelessWidget {
  const _StarRatingInfoAndReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
        children: [
          RatingBarIndicator(
            rating: 8.2,
            itemCount: 5,
            itemPadding: const EdgeInsets.only(left: 3),
            itemSize: 15.0,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: color5,
            ),
          ),
          const _Spacing(width: 10),
          const Text(
            "4.5 (50 Reviews)",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

// Spacing
class _Spacing extends StatelessWidget {
  const _Spacing({Key? key, this.height, this.width}) : super(key: key);

  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
