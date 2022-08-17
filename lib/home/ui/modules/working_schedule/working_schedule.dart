import 'package:flutter/material.dart';
import 'package:tltest/home/ui/modules/working_schedule/schedule_card.dart';

class WorkingSchedule extends StatelessWidget {
  const WorkingSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Working Schedule",
              style: TextStyle(fontSize: 23),
            ),
            TextButton(
              onPressed: null,
              child: Text(
                "View All",
                style: TextStyle(fontSize: 23),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
            children: const [
              ScheduleCard(
                  scheduleName: "Ceiling Light Repairing",
                  scheduleDate: "08 Aug 2022, 8:20 PM"),
              ScheduleCard(
                  scheduleName: "Taxi Airport Trip",
                  scheduleDate: "09 Aug 2022, 8:20 PM"),
              ScheduleCard(
                  scheduleName: "Water Connection Repairing",
                  scheduleDate: "29 May 2022, 8:20 PM"),
            ],
          ),
        )
      ],
    );
  }
}
