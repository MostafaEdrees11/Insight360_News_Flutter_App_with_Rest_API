import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insight360_project/core/resources/app_images.dart';
import 'package:insight360_project/features/home/home_cubit.dart';
import 'package:insight360_project/features/model/article_model.dart';

class NewDetailsScreen extends StatelessWidget {
  const NewDetailsScreen({super.key, required this.model});

  final ArticleModel model;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getHeadLineData(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey.shade300,
          title: Text(
            "News Detail",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),

          elevation: 0,
          scrolledUnderElevation: 0,

          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.arrow_back_ios, size: 20,),
            ),
          ),
          
          actions: [
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsetsGeometry.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
                child: Icon(Icons.bookmark_border))
          ],
        ),
        backgroundColor: Colors.white,

        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is HomeFailure) {
              return Center(child: Text(state.msg));
            }

            if (state is HomeSuccess) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    Image.network(model.urlToImage ?? ""),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            model.author??"Mostafa Edrees",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.favorite_border_outlined),
                              SizedBox(width: 8),
                              Text(
                                "204",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      ("8 min read . Updated: " + (model.publishedAt ?? "12 Jun 2024, 11:38 PM IST")),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      model.title ?? "Title",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(model.description?? "Description", style:TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),),
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
