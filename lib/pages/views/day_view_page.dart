import 'package:flutter/material.dart';

import '../../widgets/view_widgets/day_view_widget.dart';

class DayViewPageDemo extends StatefulWidget {
  const DayViewPageDemo({super.key});

  @override
  _DayViewPageDemoState createState() => _DayViewPageDemoState();
}

class _DayViewPageDemoState extends State<DayViewPageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(        
        // FloatingActionButton(
        //   elevation: 8,
        //   onPressed: () => context.pushRoute(CreateEventPage()),
        //   child: Icon(Icons.add),
        // ),
        body: DayViewWidget(),
      );
  }
}