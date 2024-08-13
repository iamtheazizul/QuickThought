import 'package:flutter/material.dart';
import 'package:quickthought/app_color.dart';
import 'package:quickthought/calendar_view/calendar_view.dart';
import 'package:quickthought/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

DateTime get _now => DateTime.now();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController()..addAll(_events),
      child: MaterialApp(
        // theme: primaryTheme,
        debugShowCheckedModeBanner: false,
        home: CalendarHomePage(),
      ),
    );
  }
}

List<CalendarEventData> _events = [
  CalendarEventData(
    date: _now,
    title: "Project meeting",
    description: "Today is project meeting.",
    startTime: DateTime(_now.year, _now.month, _now.day, 18, 30),
    endTime: DateTime(_now.year, _now.month, _now.day, 22),
  ),
  CalendarEventData(
    date: _now.add(const Duration(days: 1)),
    startTime: DateTime(_now.year, _now.month, _now.day, 18),
    endTime: DateTime(_now.year, _now.month, _now.day, 19),
    title: "Wedding anniversary",
    description: "Attend uncle's wedding anniversary.",
  ),
  CalendarEventData(
    date: _now,
    startTime: DateTime(_now.year, _now.month, _now.day, 10),
    endTime: DateTime(_now.year, _now.month, _now.day, 13),
    title: "Football Tournament",
    description: "Go to football tournament.",
  ),
  CalendarEventData(
    date: _now.add(const Duration(days: 3)),
    startTime: DateTime(_now.add(const Duration(days: 3)).year,
        _now.add(const Duration(days: 3)).month, _now.add(const Duration(days: 3)).day, 10),
    endTime: DateTime(_now.add(const Duration(days: 3)).year,
        _now.add(const Duration(days: 3)).month, _now.add(const Duration(days: 3)).day, 14),
    title: "Sprint Meeting.",
    description: "Last day of project submission for last year.",
  ),
  CalendarEventData(
    date: _now.subtract(const Duration(days: 2)),
    startTime: DateTime(
        _now.subtract(const Duration(days: 2)).year,
        _now.subtract(const Duration(days: 2)).month,
        _now.subtract(const Duration(days: 2)).day,
        14),
    endTime: DateTime(
        _now.subtract(const Duration(days: 2)).year,
        _now.subtract(const Duration(days: 2)).month,
        _now.subtract(const Duration(days: 2)).day,
        16),
    title: "Team Meeting",
    description: "Team Meeting",
  ),
  CalendarEventData(
    date: _now.subtract(const Duration(days: 2)),
    startTime: DateTime(
        _now.subtract(const Duration(days: 2)).year,
        _now.subtract(const Duration(days: 2)).month,
        _now.subtract(const Duration(days: 2)).day,
        10),
    endTime: DateTime(
        _now.subtract(const Duration(days: 2)).year,
        _now.subtract(const Duration(days: 2)).month,
        _now.subtract(const Duration(days: 2)).day,
        12),
    title: "Chemistry Viva",
    description: "Today is Joe's birthday.",
  ),
  CalendarEventData(
    date: _now,
    title: "Free Time",
    description: "Today is project meeting.",
    startTime: DateTime(_now.year, _now.month, _now.day, 9),
    endTime: DateTime(_now.year, _now.month, _now.day, 10),
    color: AppColors.availableEventBackgroundColor,
    eventBorderColor: AppColors.availableEventBorder,
    eventTitleColor: const Color.fromRGBO(35, 36, 3, 1)
  ),

];