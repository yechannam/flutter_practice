class Webtoon {
  late final String title, thumb, id;

  Webtoon.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}

class WebtoonDetail {
  late final String title, about, genre, age;

  WebtoonDetail.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        about = json['about'],
        genre = json['genre'],
        age = json['age'];
  
  static Future<WebtoonDetail> getToonby  
  return 
}
