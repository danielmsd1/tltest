import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tltest/colors.dart';
import 'package:tltest/utils/custom_app_appbar.dart';

class AddJobUI extends StatelessWidget {
  const AddJobUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      appBar: const CustomAppAppbar(
        title: "Add Job Details",
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 33.0, right: 33, top: 35),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
            children: const [
              JobAndNumberOfLaborInput(),
              _Spacing(),
              JobDetailsInputField(),
              _Spacing(),
              LocationInputField(),
              _Spacing(),
              ContactNumberInputField(),
              _Spacing(),
              AddLocationMap(),
              _Spacing(),
              TimeAndDateSelector(),
              _Spacing(),
              Divider(color: color4),
              _Spacing(),
              AttachIMageOrVideo(),
              _Spacing(),
              ContinueButton(),
            ],
          ),
        ),
      ),
    );
  }
}

// Job and number of labor input
class JobAndNumberOfLaborInput extends StatelessWidget {
  const JobAndNumberOfLaborInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                fontSize: 15,
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
    );
  }
}

// Add job details input field
class JobDetailsInputField extends StatelessWidget {
  const JobDetailsInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: color4,
          hintText: "Add Job details",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
              color: color1,
            ),
          ),
        ),
      ),
    );
  }
}

// Add location input field
class LocationInputField extends StatelessWidget {
  const LocationInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: color4,
          hintText: "Location",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        ),
      ),
    );
  }
}

// Add contact number input field
class ContactNumberInputField extends StatelessWidget {
  const ContactNumberInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: color4,
          hintText: "Contact Number",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        ),
      ),
    );
  }
}

// Add location Map
class AddLocationMap extends StatelessWidget {
  const AddLocationMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

// Time and Date Selector
class TimeAndDateSelector extends StatelessWidget {
  const TimeAndDateSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

// Attach Image or Video
class AttachIMageOrVideo extends StatelessWidget {
  const AttachIMageOrVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: color2,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.zero,
                              bottomRight: Radius.zero,
                              bottomLeft: Radius.circular(5),
                              topLeft: Radius.circular(5),
                            ),
                          ),
                        ),
                        child: const Icon(FontAwesomeIcons.camera),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: color2,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                          ),
                        ),
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
    );
  }
}

// Continue button
class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          "CONTINUE",
          style: TextStyle(
            color: color1,
          ),
        ),
      ),
    );
  }
}

// Spacing
class _Spacing extends StatelessWidget {
  const _Spacing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 21,
    );
  }
}
