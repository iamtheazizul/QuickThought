import 'package:flutter/material.dart';
import 'package:quickthought/widgets/floating_action_button/fab_button.dart';

import '../../widgets/view_widgets/week_view_widget.dart';

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
