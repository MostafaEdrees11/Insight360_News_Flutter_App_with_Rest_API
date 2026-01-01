class ArticleModel {
  String? author;
  String? title;
  String? description;
  String? urlToImage;
  String? publishedAt;

  ArticleModel({this.author, this.title, this.description, this.urlToImage, this.publishedAt});

  factory ArticleModel.fromjson(Map<String, dynamic> json) {
    return ArticleModel(
      author: json["author"],
      title: json["title"],
      description: json["description"],
      urlToImage: json["urlToImage"],
      publishedAt: json["publishedAt"],
    );
  }
}