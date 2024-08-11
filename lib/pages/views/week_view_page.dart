import 'package:flutter/material.dart';
import 'package:quickthought/widgets/fab_button.dart';

import '../../widgets/week_view_widget.dart';

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
