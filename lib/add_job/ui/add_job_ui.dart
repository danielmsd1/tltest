import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tltest/colors.dart';

class AddJobUI extends StatelessWidget {
  const AddJobUI({Key? key}) : super(key: key);

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
        title: const Text("Add Job Details"),
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
        padding: const EdgeInsets.only(left: 33.0, right: 33, top: 35),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
            children: [
              SingleChildScrollView(
                physics: const ScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: color3),
                      child: const Text(
                        "Electrician",
                        style: TextStyle(
                          color: color1,
                          fontFamily: "InterUI",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      "No. of Labor",
                      style: TextStyle(
                        color: color4,
                      ),
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: color4,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: color1,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.remove,
                                  color: color4,
                                ),
                              ),
                            ),
                          ),
                          const Text("2"),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: color1,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: color4,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const _Spacing(),
              SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: color4,
                    hintText: "Add Job details",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic,
                        color: color1,
                      ),
                    ),
                  ),
                ),
              ),
              const _Spacing(),
              SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: color4,
                    hintText: "Location",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                  ),
                ),
              ),
              const _Spacing(),
              SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: color4,
                    hintText: "Contact Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                  ),
                ),
              ),
              const _Spacing(),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color4,
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1478860409698-8707f313ee8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.location_on),
                      Text(
                        "Add Location Map",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              const _Spacing(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: color4,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "12 Aug, 2022",
                              ),
                              Icon(Icons.calendar_month)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: color4,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "09:41",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: color4,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "AM",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "PM",
                            style: TextStyle(color: color4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const _Spacing(),
              const Divider(color: color4),
              const _Spacing(),
              Container(
                height: 104,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color4,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Attach Image or Video",
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 28.0, right: 28.0, top: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 42,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style:
                                      ElevatedButton.styleFrom(primary: color2),
                                  child: const Icon(FontAwesomeIcons.camera),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 42,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style:
                                      ElevatedButton.styleFrom(primary: color2),
                                  child: const Icon(FontAwesomeIcons.images),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const _Spacing(),
              SizedBox(
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: color3,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    "CONTINUE",
                    style: TextStyle(
                      color: color1,
                      fontSize: 23,
                      fontFamily: "InterUI",
                    ),
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

class _Spacing extends StatelessWidget {
  const _Spacing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 21,
    );
  }
}
