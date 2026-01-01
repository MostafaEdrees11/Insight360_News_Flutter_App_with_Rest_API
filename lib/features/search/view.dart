import 'package:flutter/material.dart';
import 'package:insight360_project/features/search_results/view.dart';

import '../../core/resources/app_colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: 366,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 270,
                    height: 48,
                    child: TextFormField(
                      onFieldSubmitted: (value) {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchResult(query: value,)));
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.formColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColors.focusFormColor),
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(Icons.search, color: AppColors.secondaryColor),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text("Cancel", style: TextStyle(
                    color: AppColors.secondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
