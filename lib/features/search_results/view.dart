import 'package:flutter/material.dart';
import 'package:insight360_project/core/resources/app_colors.dart';

import '../widgets/search_result_item.dart';

class SearchResultDetails {
  String image;
  String title;
  String author;
  String date;

  SearchResultDetails(this.image, this.title, this.author, this.date);
}

class SearchResult extends StatelessWidget {
  SearchResult({super.key});

  List<SearchResultItem> result = [
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 1.png",
      searchResultTitle:
          "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Mostafa Edrees",
      searchResultDate: "May 3, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 2.png",
      searchResultTitle:
          "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Anas Mostafa",
      searchResultDate: "May 7, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 3.png",
      searchResultTitle:
          "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Mostafa Edrees",
      searchResultDate: "May 12, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 4.png",
      searchResultTitle:
          "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Anas Mostafa",
      searchResultDate: "May 15, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 1.png",
      searchResultTitle:
      "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Mostafa Edrees",
      searchResultDate: "May 3, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 2.png",
      searchResultTitle:
      "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Anas Mostafa",
      searchResultDate: "May 7, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 3.png",
      searchResultTitle:
      "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Mostafa Edrees",
      searchResultDate: "May 12, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 4.png",
      searchResultTitle:
      "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Anas Mostafa",
      searchResultDate: "May 15, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 1.png",
      searchResultTitle:
      "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Mostafa Edrees",
      searchResultDate: "May 3, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 2.png",
      searchResultTitle:
      "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Anas Mostafa",
      searchResultDate: "May 7, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 3.png",
      searchResultTitle:
      "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Mostafa Edrees",
      searchResultDate: "May 12, 2023",
    ),
    SearchResultItem(
      searchResultImage: "assets/images/Rectangle 4.png",
      searchResultTitle:
      "Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power",
      searchResultAuthor: "Anas Mostafa",
      searchResultDate: "May 15, 2023",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search results",
          style: TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),

      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: result.length,
              itemBuilder: (context, index) => SearchResultItem(
                searchResultImage: result[index].searchResultImage,
                searchResultTitle: result[index].searchResultTitle,
                searchResultAuthor: result[index].searchResultAuthor,
                searchResultDate: result[index].searchResultDate,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
