import 'package:flutter/material.dart';

import '../../core/resources/app_colors.dart';

class Elvated_Button extends StatelessWidget {
  const Elvated_Button({
    super.key,
    required this.content,
    required this.backgroundColor,
    required this.contentColor,
  });

  final String content;
  final Color backgroundColor;
  final Color contentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(width: 1, color: Colors.black),
        ),
        child: Text(
          content,
          style: TextStyle(
            color: contentColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
