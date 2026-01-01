import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insight360_project/core/resources/app_colors.dart';
import 'package:insight360_project/features/home/home_cubit.dart';
import 'package:insight360_project/features/new_details/view.dart';

import '../widgets/search_result_item.dart';

class SearchResultDetails {
  String image;
  String title;
  String author;
  String date;

  SearchResultDetails(this.image, this.title, this.author, this.date);
}

class SearchResult extends StatelessWidget {
  SearchResult({super.key, required this.query});

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

  final String query;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      HomeCubit()
        ..search(query: query),
      child: Scaffold(
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
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if(state is HomeLoading){
              return Center(child: CircularProgressIndicator());
            }
            if(state is HomeFailure){
              return Center(child: Text(state.msg),);
            }
            if(state is HomeSuccess) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.data.length,
                      itemBuilder: (context, index) =>
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewDetailsScreen(model: state.data[index],)));
                            },
                            child: SearchResultItem(
                              searchResultImage: state.data[index].urlToImage ?? "data:image/jpeg;base64,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",
                              searchResultTitle: state.data[index].title ?? "Title",
                              searchResultAuthor: state.data[index].author ?? "Author",
                              searchResultDate: state.data[index].publishedAt ?? "Date",
                            ),
                          ),
                    ),
                  ),
                ],
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
