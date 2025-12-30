import 'package:flutter/material.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key, required this.searchResultImage, required this.searchResultTitle, required this.searchResultAuthor, required this.searchResultDate});

  final String searchResultImage;
  final String searchResultTitle;
  final String searchResultAuthor;
  final String searchResultDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  searchResultTitle,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      searchResultAuthor,
                      style: TextStyle(
                        color: Color(0xFF6D6265),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      searchResultDate,
                      style: TextStyle(
                        color: Color(0xFF6D6265),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            searchResultImage,
            width: 130,
            height: 80,
          ),
        ],
      ),
    );
  }
}
