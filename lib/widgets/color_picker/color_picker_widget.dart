import 'package:flutter/material.dart';
import 'package:quickthought/app_color.dart';
import 'package:quickthought/widgets/color_picker/color_picker.dart';
import 'package:quickthought/widgets/color_picker/color_properties.dart';

typedef ColorPropertiesCallback = void Function(ColorProperties colorProperties);

class ColorPickerButton extends StatefulWidget {
  final ColorPropertiesCallback onColorSelected;

  ColorPickerButton({required this.onColorSelected});

  @override
  _ColorPickerButtonState createState() => _ColorPickerButtonState();
}

class _ColorPickerButtonState extends State<ColorPickerButton> {
  Color? _selectedColor;

  @override
  void initState() {
    super.initState();
    // Set the default selected color
    _selectedColor = AppColors.primaryEventBackgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorPicker(
          tappedColor: _selectedColor,
          onColorSelected: (color) {
            setState(() {
              _selectedColor = color.selectedColor;
            // moved this line two line forwards
            });
            widget.onColorSelected(color);
          },
        ),
        // if (_selectedColor != null)
        //   Padding(
        //     padding: const EdgeInsets.all(16.0),
            // child: Text(
            //   '$_selectedColor',
            //   style: TextStyle(fontSize: 24, color: _selectedColor),
            // ),
          // ),
      ],
    );
  }
}


