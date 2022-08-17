import 'package:flutter/material.dart';
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
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: color4,
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.verified,
                          color: color5,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2.82,
                        ),
                        SizedBox(
                          height: 30,
                          child: Chip(
                            backgroundColor: color5,
                            label: Text(
                              "Approved",
                              style: TextStyle(color: color4, fontSize: 10),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          FontAwesomeIcons.moneyCheck,
                          color: Colors.green,
                          size: moneyHeight,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          FontAwesomeIcons.moneyCheck,
                          color: Colors.green,
                          size: moneyHeight,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          FontAwesomeIcons.moneyCheck,
                          color: Colors.green,
                          size: moneyHeight,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          FontAwesomeIcons.moneyCheck,
                          color: Colors.green,
                          size: moneyHeight,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          FontAwesomeIcons.solidHeart,
                          color: color3,
                        )
                      ],
                    ),
                    Padding(
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
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Trovanddrim, Palayam",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Row(
                        children: const [
                          Icon(FontAwesomeIcons.star,
                              size: starHeight, color: color3),
                          Icon(FontAwesomeIcons.star,
                              size: starHeight, color: color3),
                          Icon(FontAwesomeIcons.star,
                              size: starHeight, color: color3),
                          Icon(FontAwesomeIcons.star,
                              size: starHeight, color: color3),
                          Icon(
                            FontAwesomeIcons.star,
                            color: Colors.grey,
                            size: starHeight,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "4.5 (50 Reviews)",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
