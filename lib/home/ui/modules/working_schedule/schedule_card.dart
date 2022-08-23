import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tltest/colors.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    Key? key,
    required this.scheduleName,
    required this.scheduleDate,
  }) : super(key: key);

  final String scheduleName;
  final String scheduleDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 167,
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: color3,
          ),
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(5.0),
          width: 167,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  scheduleName,
                  style: const TextStyle(fontSize: 14),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.chevronRight,
                  size: 15,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                scheduleDate,
                style: const TextStyle(
                  fontSize: 13,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
