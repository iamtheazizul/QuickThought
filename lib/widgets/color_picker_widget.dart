import 'package:flutter/material.dart';
import 'package:quickthought/widgets/color_picker.dart';
import 'package:quickthought/widgets/color_properties.dart';

typedef ColorPropertiesCallback = void Function(ColorProperties colorProperties);

class ColorPickerButton extends StatefulWidget {
  final ColorPropertiesCallback onColorSelected;

  ColorPickerButton({required this.onColorSelected});

  @override
  _ColorPickerButtonState createState() => _ColorPickerButtonState();
}

class _ColorPickerButtonState extends State<ColorPickerButton> {
  Color? _color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorPicker(
          onColorSelected: (color) {
            setState(() {
              _color = color.selectedColor;
              widget.onColorSelected(color);
            });
          },
        ),
        if (_color != null)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '$_color',
              style: TextStyle(fontSize: 24, color: _color),
            ),
          ),
      ],
    );
  }
}


