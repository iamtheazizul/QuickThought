import 'package:flutter/material.dart';
import 'package:quickthought/calendar_view/src/day_view/day_view.dart';
import 'package:quickthought/calendar_view/src/month_view/month_view.dart';
import 'package:quickthought/calendar_view/src/week_view/week_view.dart';
import 'package:quickthought/pages/views/day_view_page.dart';
import 'package:quickthought/quickthought.dart';

class GenericDrawer extends StatelessWidget {
  const GenericDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Day View'),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (ctx) => const DayViewPageDemo(),
                )
              );
            },
    
          ),
    
          ListTile(
            title: const Text('Week View'),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (ctx) => const WeekViewDemo(),
                )
              );
            },
          ),
    
          ListTile(
            title: const Text('Month View'),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (ctx) => const MonthViewPageDemo(),
                )
              );
            },
          )
        ],
      ),
    );
  }
}
