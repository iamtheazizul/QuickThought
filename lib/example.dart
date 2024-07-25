import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  final String text;

  const MyStatefulWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _displayText = 'Initial Text';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.text), // Uses widget properties
        Text(_displayText), // Uses state properties
        ElevatedButton(
          onPressed: () {
            setState(() {
              _displayText = 'New Text'; // Changes state
            });
          },
          child: Text('Change Text'),
        ),
      ],
    );
  }
}
