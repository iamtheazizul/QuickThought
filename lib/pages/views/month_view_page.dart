import 'package:flutter/material.dart';

import '../../extension.dart';
import '../../widgets/month_view_widget.dart';
import '../create_event_page.dart';

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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          elevation: 8,
          onPressed: () => context.pushRoute(CreateEventPage()),
        ),
        body: MonthViewWidget(),
  
    );
  }
}
