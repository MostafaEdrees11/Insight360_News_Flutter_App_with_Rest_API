import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insight360_project/core/resources/app_colors.dart';
import 'package:insight360_project/core/resources/app_images.dart';
import 'package:insight360_project/features/widgets/elvated_button.dart';
import 'package:insight360_project/features/widgets/new_item.dart';

class NewsCategoryDetails {
  String content;
  Color backgroundColor;
  Color contentColor;

  NewsCategoryDetails(this.content, this.backgroundColor, this.contentColor);
}

class NewDetails {
  String image;
  String title;
  String description;
  String date;

  NewDetails(this.image, this.title, this.description, this.date);
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<NewsCategoryDetails> newsCategoriesButtons = [
    NewsCategoryDetails("All", AppColors.primaryColor, Colors.black),
    NewsCategoryDetails("Politic", Colors.white, Colors.black),
    NewsCategoryDetails("Sport", Colors.white, Colors.black),
    NewsCategoryDetails("Education", Colors.white, Colors.black),
  ];

  List<NewDetails> news = [
    NewDetails(
      AppImages.rect1Image,
      "New1",
      "Chhattisgarh Polls: Ex Cong \nMLA Blames TS Deo For Losing \nPower",
      "June 13,2024",
    ),
    NewDetails(
      AppImages.rect2Image,
      "New2",
      "CM Announcement: Rajasthan \nBJP Chief on Delay in Govt \nFormation",
      "June 12,2024",
    ),
    NewDetails(
      AppImages.rect3Image,
      "New3",
      "Chhattisgarh Polls: Ex Cong \nMLA Blames TS Deo For Losing \nPower",
      "June 11,2024",
    ),
    NewDetails(
      AppImages.rect4Image,
      "New4",
      "CM Announcement: Rajasthan \nBJP Chief on Delay in Govt \nFormation",
      "June 10,2024",
    ),
    NewDetails(
      AppImages.rect1Image,
      "New1",
      "Chhattisgarh Polls: Ex Cong \nMLA Blames TS Deo For Losing \nPower",
      "June 13,2024",
    ),
    NewDetails(
      AppImages.rect2Image,
      "New2",
      "CM Announcement: Rajasthan \nBJP Chief on Delay in Govt \nFormation",
      "June 12,2024",
    ),
    NewDetails(
      AppImages.rect3Image,
      "New3",
      "Chhattisgarh Polls: Ex Cong \nMLA Blames TS Deo For Losing \nPower",
      "June 11,2024",
    ),
    NewDetails(
      AppImages.rect4Image,
      "New4",
      "CM Announcement: Rajasthan \nBJP Chief on Delay in Govt \nFormation",
      "June 10,2024",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: SvgPicture.asset(
                AppImages.burgerMenuIcon,
                width: 17,
                height: 17,
              ),
            ),
            SizedBox(
              width: 97,
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SvgPicture.asset(
                      AppImages.searchIcon,
                      width: 17,
                      height: 17,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SvgPicture.asset(
                      AppImages.bellIcon,
                      width: 17,
                      height: 17,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Breaking News",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Show More",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Image.asset(AppImages.fieldImage, height: 140),
            SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: newsCategoriesButtons.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Elvated_Button(
                  content: newsCategoriesButtons[index].content,
                  backgroundColor: newsCategoriesButtons[index].backgroundColor,
                  contentColor: newsCategoriesButtons[index].contentColor,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News For You",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Show More",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            Expanded(
              child: ListView.builder(
                itemCount: news.length,
                itemBuilder: (context, index) => NewItem(
                  newImage: news[index].image,
                  newTitle: news[index].title,
                  newDescription: news[index].description,
                  newDate: news[index].date,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
