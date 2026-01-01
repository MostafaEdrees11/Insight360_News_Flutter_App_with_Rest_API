import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insight360_project/features/model/article_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final dio = Dio();

  Future<void> getHeadLineData() async {
    try {
      emit(HomeLoading());

      final Response response = await dio.get(
        "https://newsapi.org/v2/everything",
        queryParameters: {
          "q": "everything",
          "apiKey": "f1afd8bafff341abbd05c11c7178c090",
        },
      );

      final articles = response.data["articles"] as List;
      print("----------------Articles---------------------");
      print(articles);

      final data = articles.map((article) => ArticleModel.fromjson(article),).toList();
      print("----------------------Data---------------------------");
      print(data);
      emit(HomeSuccess(data));

    } on DioException catch (e) {
      print("----------------------Error-----------------");
      emit(HomeFailure(e.message ?? "There is an error."));
    } catch (e) {
      print("----------------------Error-----------------");
      emit(HomeFailure(e.toString()));
    }
  }

  Future<void> search({required String query}) async {
    try {
      emit(HomeLoading());

      final Response response = await dio.get(
        "https://newsapi.org/v2/everything",
        queryParameters: {
          "q": query,
          "apiKey": "f1afd8bafff341abbd05c11c7178c090",
        },
      );

      final articles = response.data["articles"] as List;
      final data = articles.map((article) => ArticleModel.fromjson(article),).toList();
      emit(HomeSuccess(data));

    } on DioException catch(e) {
      emit(HomeFailure(e.message?? "Failure") );
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }
}
