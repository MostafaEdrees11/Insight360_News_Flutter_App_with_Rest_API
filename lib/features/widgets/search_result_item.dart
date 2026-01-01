import 'package:flutter/material.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({
    super.key,
    required this.searchResultImage,
    required this.searchResultTitle,
    required this.searchResultAuthor,
    required this.searchResultDate,
  });

  final String searchResultImage;
  final String searchResultTitle;
  final String searchResultAuthor;
  final String searchResultDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  searchResultTitle,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Text(
                  searchResultAuthor,
                  style: TextStyle(
                    color: Color(0xFF6D6265),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      searchResultDate,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Color(0xFF6D6265),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 2,),
          Expanded(
            flex: 2,
            child: Image.network(
              errorBuilder: (BuildContext, Object, StackTrace) {
                return Icon(Icons.error, color: Colors.red, size: 35,);
              },
              searchResultImage,
              fit: BoxFit.scaleDown,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
