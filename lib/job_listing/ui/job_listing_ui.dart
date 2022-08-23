import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tltest/colors.dart';
import 'package:tltest/job_listing/ui/modules/enabler_card.dart';
import 'package:tltest/job_listing/ui/modules/range_slider_ui.dart';
import 'package:tltest/utils/custom_app_appbar.dart';
import 'package:tltest/utils/custom_confirmation_slider.dart';

class JobListingUI extends StatelessWidget {
  const JobListingUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      appBar: const CustomAppAppbar(
        title: "Select a Price Range",
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 33.0, right: 33.0, top: 35),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
            children: const [
              AmountContainer(),
              _Spacing(cHeight: 21),
              _ChooseEnablerAndViewAllRow(),
              _Spacing(cHeight: 10),
              EnablerCard(),
              _Spacing(cHeight: 10.0),
              EnablerCard(),
              _Spacing(cHeight: 10.0),
              EnablerCard(),
              _Spacing(cHeight: 10.0),
              CustomConfirmationSlider(),
              _Spacing(cHeight: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}

// The amount: Avrg per day
class AmountContainer extends StatelessWidget {
  const AmountContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

// Choose Enabler row
class _ChooseEnablerAndViewAllRow extends StatelessWidget {
  const _ChooseEnablerAndViewAllRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

// Spacing
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
