import 'package:flutter/material.dart';
import 'package:quickthought/app_color.dart';
import 'package:quickthought/widgets/color_properties.dart';

class ColorPicker extends StatelessWidget {
  final Color? tappedColor;
  final Function(ColorProperties) onColorSelected;

  ColorPicker({this.tappedColor, required this.onColorSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,

      // need to fix the color gradients
      // change from backgroundcolor to bordercolor
      children: [
        _colorButton(AppColors.primaryEventBackgroundColor, 'Peach'),
        _colorButton(AppColors.secondaryEventBackgroundColor, 'Blueberry'),
        _colorButton(AppColors.tertiaryEventBackgroundColor, 'Grape'),
        _colorButton(AppColors.quaternaryEventBackgroundColor, 'Banana'),
        _colorButton(AppColors.quinaryEventBackgroundColor, 'Honeydew')
      ],
    );
  }

  Widget _colorButton(Color color, String colorName) {
    bool isSelected = color == tappedColor;

    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [ 
          Container(
            padding: EdgeInsets.all(16),
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: isSelected ? Border.all(color: Colors.black, width: 1) : null,
            ),
          ),
          Text(colorName),
          ],
        ),
      ),

      onTap: () {
        ColorProperties colorProperties = assignVariables(color);
        onColorSelected(colorProperties);
      },
    );
    }

  ColorProperties assignVariables(Color color) {
        Color textColor;
        Color borderColor;

        if (color == AppColors.primaryEventBackgroundColor) {
          textColor = AppColors.primaryEventTitle;
          borderColor = AppColors.primaryEventBorder;
      } else if (color == AppColors.secondaryEventBackgroundColor) {
          textColor = AppColors.secondaryEventTitle;
          borderColor = AppColors.secondaryEventBorder;
      } else if (color == AppColors.tertiaryEventBackgroundColor) {
          textColor = AppColors.tertiaryEventTitle;
          borderColor = AppColors.tertiaryEventBorder;
      } else if (color == AppColors.quaternaryEventBackgroundColor) {
          textColor = AppColors.quaternaryEventTitle;
          borderColor = AppColors.quaternaryEventBorder;
      } else if (color == AppColors.quinaryEventBackgroundColor) {
          textColor = AppColors.quinaryEventTitle;
          borderColor = AppColors.quinaryEventBorder;      
      } else {
          textColor = AppColors.availableEventTitle;
          borderColor = AppColors.availableEventBorder;          }

      return ColorProperties(
        selectedColor: color,
        textColor: textColor,
        borderColor: borderColor,
      );
    }
  }

