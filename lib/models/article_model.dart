class ArticleModel {
  final String author;
  final String title;
  final String? description;
  final String? image;
  final String publishedAt;
  
  ArticleModel(
      {required this.author,
      required this.title,
       this.description,
       this.image,
      required this.publishedAt});
  factory ArticleModel.fromJson(json){
    return ArticleModel(
              author: json['author'],
              title: json['title'],
              description: json['description'],
              image: json['urlToImage'],
              publishedAt: json['publishedAt']);
  }
}
