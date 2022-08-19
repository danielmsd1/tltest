import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:tltest/colors.dart';
import 'package:tltest/job_listing/ui/modules/enabler_card.dart';
import 'package:tltest/job_listing/ui/modules/range_slider_ui.dart';

class JobListingUI extends StatelessWidget {
  const JobListingUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: color2,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left),
        ),
        title: const Text("Select a Price Range"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active,
              color: color4,
              size: 18.75,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.window,
              color: color4,
              size: 24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 33.0, right: 33.0, top: 35),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color4,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // Amount( Average per day.)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Amount",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "InterUI",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Avrg per day",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontFamily: "InterUI",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.ellipsis))
                        ],
                      ),
                      //text range
                      Row(
                        children: const [
                          Text(
                            "800-1000",
                            style: TextStyle(
                              fontSize: 23,
                              fontFamily: "InterUI",
                            ),
                          ),
                        ],
                      ),
                      //Filter
                      const RangeSliderUI(),
                    ],
                  ),
                ),
              ),
              const _Spacing(
                cHeight: 21,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Choose Enabler",
                    style: TextStyle(fontSize: 23, color: color4),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      "View All",
                      style: TextStyle(fontSize: 23, color: color4),
                    ),
                  )
                ],
              ),
              const _Spacing(
                cHeight: 10,
              ),
              const EnablerCard(),
              const _Spacing(
                cHeight: 10.0,
              ),
              const EnablerCard(),
              const _Spacing(
                cHeight: 10.0,
              ),
              const EnablerCard(),
              const _Spacing(
                cHeight: 10.0,
              ),
              ConfirmationSlider(
                backgroundColor: color3,
                foregroundColor: color1,
                text: "SLIDE TO CONFIRM",
                textStyle: const TextStyle(
                  color: color1,
                  fontSize: 15,
                  fontFamily: "InterUI",
                ),
                onConfirmation: () => print("Confirmed!"),
              ),
              const _Spacing(
                cHeight: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Spacing extends StatelessWidget {
  const _Spacing({Key? key, required this.cHeight}) : super(key: key);
  final double cHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cHeight,
    );
  }
}
