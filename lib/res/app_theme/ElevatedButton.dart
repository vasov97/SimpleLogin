import 'package:flutter/material.dart';
import 'package:project_1/res/app_theme/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final double borderRadius;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double? buttonWidth;
  final double? buttonHeight;
  final double defaultButtonHeight;
  final Color? iconColor;
  final double? textSize;
  final double? iconSize;

  const CustomElevatedButton({
    Key? key,
    this.text = '',
    this.icon,
    this.borderRadius = 10.0,
    this.buttonColor = AppColors.elevatedButtonColor,
    this.textColor = Colors.black,
    required this.onPressed,
    this.buttonWidth,
    this.buttonHeight,
    this.defaultButtonHeight = 50.0,
    this.iconColor=Colors.black,
    this.textSize,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double calculatedButtonWidth = buttonWidth ?? screenWidth * 0.8;
    final double calculatedButtonHeight = buttonHeight ?? defaultButtonHeight;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        minimumSize: Size(calculatedButtonWidth, calculatedButtonHeight),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
            const SizedBox(width: 8.0),
          ],
          if (text.isNotEmpty) Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
            ),
          ),
        ],
      ),
    );
  }
}
