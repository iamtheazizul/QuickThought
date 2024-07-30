import 'package:flutter/material.dart';
import 'package:quickthought/app_color.dart';
import 'package:quickthought/widgets/fab_button.dart';
import 'package:quickthought/widgets/genericDrawer.dart';

import '../../extension.dart';
import '../../widgets/day_view_widget.dart';
import '../create_event_page.dart';

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