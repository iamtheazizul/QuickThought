import 'package:flutter/material.dart';
import 'package:quickthought/widgets/fab_button.dart';

import '../../widgets/month_view_widget.dart';

class MonthViewPageDemo extends StatefulWidget {
  const MonthViewPageDemo({
    super.key,
  });

  @override
  _MonthViewPageDemoState createState() => _MonthViewPageDemoState();
}

class _MonthViewPageDemoState extends State<MonthViewPageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: CustomActionButton(),
        body: MonthViewWidget(),
  
    );
  }
}
