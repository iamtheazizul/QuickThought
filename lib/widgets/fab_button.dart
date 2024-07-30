import 'package:flutter/material.dart';
import 'package:quickthought/app_color.dart';
import 'package:quickthought/extension.dart';
import 'package:quickthought/pages/create_event_page.dart';

class CustomActionButton extends StatefulWidget {
  @override
  _CustomActionButtonState createState() => _CustomActionButtonState();
}

class _CustomActionButtonState extends State<CustomActionButton> {
  int _iconIndex = 0;
  final List<IconData> _icons = [Icons.add, Icons.person, Icons.lightbulb];

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    if (details.delta.dy < 0) {
      // Swiping up
      setState(() {
        _iconIndex = (_iconIndex + 1) % _icons.length;
      });
    } else if (details.delta.dy > 0) {
      // Swiping down
      setState(() {
        _iconIndex = (_iconIndex - 1 + _icons.length) % _icons.length;
      });
    }
  }

  void _onButtonPressed(BuildContext context) {
    switch (_iconIndex) {
      case 0:
        // Action for add events icon
        context.pushRoute(CreateEventPage());
        break;
      case 1:
        // Action for 'being social'
        print('Check action');
        break;
      case 2:
        // Action for Quick ideas
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: _onVerticalDragUpdate,
      child: FloatingActionButton(
        backgroundColor: AppColors.primaryAccent,
        foregroundColor: AppColors.white,
        onPressed: () => _onButtonPressed(context),
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(child: child, scale: animation);
          },
          child: Icon(
            _icons[_iconIndex],
            key: ValueKey<int>(_iconIndex),
          ),
        ),
      ),
    );
  }
}
