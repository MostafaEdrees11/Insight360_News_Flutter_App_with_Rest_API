import 'package:flutter/material.dart';

import '../../core/resources/app_images.dart';

class NewItem extends StatelessWidget {
  const NewItem({
    super.key,
    required this.newImage,
    required this.newTitle,
    required this.newDescription,
    required this.newDate,
  });

  final String newImage;
  final String newTitle;
  final String newDescription;
  final String newDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Row(
        children: [
          Expanded(child: Image.asset(newImage, width: 148, height: 91)),
          SizedBox(width: 8),
          SizedBox(
            width: 211,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  newTitle,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4),
                Text(
                  newDescription,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 2),
                Text(
                  newDate,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFD2B0B0),
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
