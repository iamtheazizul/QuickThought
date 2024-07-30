import 'package:flutter/material.dart';
import 'package:quickthought/quickthought.dart';


class CalendarHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  //   final event1 = CalendarEventData(
  //     title: "Event 1", 
  //     date: DateTime(2024, 6, 29),
  //     endDate: DateTime(2024, 6, 30),
  //     startTime: DateTime(2024, 6, 29, 8, 0, 0),
  //     endTime: DateTime(2024, 6, 30, 10, 0, 0),
  //   );

  //   final event2 = CalendarEventData(
  //     title: "Event 2", 
  //     date: DateTime(2024, 6, 30),
  //     startTime: DateTime(2024, 6, 30, 10, 0, 0),
  //     endTime: DateTime(2024, 6, 30, 17, 0, 0),
  //   );

  // CalendarControllerProvider.of(context).controller.add(event1);
  // CalendarControllerProvider.of(context).controller.add(event2);
  // // CalendarControllerProvider.of(context).controller.remove(event2);
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: Text('QuickThought')
      //   ),
      // ),
      body: const DayViewPageDemo(),
    );
  }
}
