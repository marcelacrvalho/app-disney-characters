class Character {
  List<String>? films;
  List<String>? shortFilms;
  List<String>? tvShows;
  List<String>? videoGames;
  List<String>? parkAttractions;
  int? iId;
  String? name;
  String? imageUrl;
  String? url;

  Character(
      {this.films,
        this.shortFilms,
        this.tvShows,
        this.videoGames,
        this.parkAttractions,
        this.iId,
        this.name,
        this.imageUrl,
        this.url});

  Character.fromJson(Map<String, dynamic> json) {
    films = json['films'].cast<String>();
    shortFilms = json['shortFilms'].cast<String>();
    tvShows = json['tvShows'].cast<String>();
    videoGames = json['videoGames'].cast<String>();
    parkAttractions = json['parkAttractions'].cast<String>();
    iId = json['_id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['films'] = films;
    data['shortFilms'] = shortFilms;
    data['tvShows'] = tvShows;
    data['videoGames'] = videoGames;
    data['parkAttractions'] = parkAttractions;
    data['_id'] = iId;
    data['name'] = name;
    data['imageUrl'] = imageUrl;
    data['url'] = url;
    return data;
  }
}
