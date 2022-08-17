import 'package:flutter/material.dart';
import 'package:tltest/colors.dart';
import 'package:tltest/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      color: color2,
      margin: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                physics: const ScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Stack(
                        children: const [
                          CircleAvatar(
                            backgroundImage: NetworkImage(homeProfileImage),
                            radius: 25,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                            color: color4,
                            fontWeight: FontWeight.w100,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Samuel John",
                          style: TextStyle(
                              color: color4,
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: color4,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 2.0, left: 0.0, top: 0.0, bottom: 0.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.account_circle,
                              size: 28,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.expand_circle_down,
                              size: 22,
                              color: color3,
                            ),
                          ],
                        ),
                      ),
                    ),
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
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16.0, top: 33, bottom: 28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "What Services Do You Need?",
                      style: TextStyle(
                        color: color4,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 45,
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: "Search",
                          fillColor: color4,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: color1,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.mic,
                              color: color1,
                            ),
                          ),
                          // suffixIcon: Icon(Icons.mic),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0)),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
