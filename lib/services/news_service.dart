import 'package:dio/dio.dart';
import 'package:news_app/models/new_model.dart';

class New_sevice {
  Dio dio = Dio();
  Future<List<News_model>> getnews(String catogery) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&category=$catogery&apiKey=4e8b58804d564f16a5ffd38119da00cc");
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<News_model> article_list = [];
      for (var article in articles) {
        News_model model = News_model(
            image: article["urlToImage"],
            title: article["title"],
            subtitle: article["description"]);
        article_list.add(model);
      }
      return article_list;
    } on Exception catch (e) {
      return [];
    }
  }
}
