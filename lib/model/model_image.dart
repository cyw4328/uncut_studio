
class Movie {
  final String title;
  final String keyword;
  final String poster;
  final String like;

  Movie.fromMap(Map<String , dynamic> map)
      : title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        like = map['like'];


  @override
  String toString() => "Movie<$title:$keyword>";
}

class Event {
  final String title;
  final String keyword;
  final String poster;
  final bool like;

  Event.fromMap(Map<String , dynamic> map)
      : title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        like = map['like'];


  @override
  String toString() => "Event<$title:$keyword>";
}