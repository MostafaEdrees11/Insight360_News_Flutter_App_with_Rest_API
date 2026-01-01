import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insight360_project/core/resources/app_colors.dart';
import 'package:insight360_project/core/resources/app_images.dart';
import 'package:insight360_project/features/home/home_cubit.dart';
import 'package:insight360_project/features/search/view.dart';
import 'package:insight360_project/features/search_results/view.dart';
import 'package:insight360_project/features/widgets/elvated_button.dart';
import 'package:insight360_project/features/widgets/new_item.dart';

import '../new_details/view.dart';

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

  List<String> titles = ["everything","travel", "Technology", "Business", "Entertainment"];
  List<NewsCategoryDetails> newsCategoriesButtons = [
    NewsCategoryDetails("All", AppColors.primaryColor, Colors.black),
    NewsCategoryDetails("Travel", Colors.white, Colors.black),
    NewsCategoryDetails("Technology", Colors.white, Colors.black),
    NewsCategoryDetails("Business", Colors.white, Colors.black),
    NewsCategoryDetails("Entertainment", Colors.white, Colors.black),
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
    return BlocProvider(
      create: (context) => HomeCubit()..getHeadLineData(),
      child: Scaffold(
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(),
                          ),
                        );
                      },
                      child: Container(
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

        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            print("----------------------------$state------------------------");
            if (state is HomeLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is HomeFailure) {
              return Center(child: Text(state.msg));
            }

            if (state is HomeSuccess) {
              print(state.data);
              return Padding(
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
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewDetailsScreen(model: state.data[0])));
                            },
                            child: Text(
                              "Show More",
                              style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Image.network(
                      state.data[0].urlToImage ??
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3fGg33KuieCuoDec57yDDJCiFcNmSLMBSwg&s",
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        itemCount: newsCategoriesButtons.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ElevatedButton(

                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    SearchResult(query: titles[index]),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                newsCategoriesButtons[index].backgroundColor,
                          ),
                          child: Text(
                            newsCategoriesButtons[index].content,
                            style: TextStyle(
                              color: newsCategoriesButtons[index].contentColor,
                            ),
                          ),
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
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SearchResult(query: titles[0])));
                            },
                            child: Text(
                              "Show More",
                              style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.data.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => NewDetailsScreen(
                                  model: state.data[index + 1],
                                ),
                              ),
                            );
                          },
                          child: NewItem(
                            newImage:
                                state.data[index + 1].urlToImage ??
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3fGg33KuieCuoDec57yDDJCiFcNmSLMBSwg&s",
                            newTitle: state.data[index + 1].title ?? "Title",
                            newDescription:
                                state.data[index + 1].description ??
                                "Description",
                            newDate:
                                state.data[index + 1].publishedAt ?? "Date",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }

            return SizedBox();
          },
        ),
      ),
    );
  }
}
