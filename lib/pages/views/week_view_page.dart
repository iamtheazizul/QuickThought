import 'package:flutter/material.dart';
import 'package:quickthought/widgets/fab_button.dart';

import '../../extension.dart';
import '../../widgets/week_view_widget.dart';
import '../create_event_page.dart';

class WeekViewDemo extends StatefulWidget {
  const WeekViewDemo({super.key});

  @override
  _WeekViewDemoState createState() => _WeekViewDemoState();
}

class _WeekViewDemoState extends State<WeekViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: CustomActionButton(),
        body: WeekViewWidget(),
    
    );
  }
}
