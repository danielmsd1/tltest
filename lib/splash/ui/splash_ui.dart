import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tltest/colors.dart';
import 'package:tltest/constants.dart';

class SplashUI extends StatelessWidget {
  const SplashUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
              height: 80,
              color: color3,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              productName,
              style: productNameTextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              companyName,
              style: companyNameTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
