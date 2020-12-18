class RickAndMorty {
  RickAndMorty({
    this.data,
  });

  Data data;
}

class Data {
  Data({
    this.character,
  });

  Character character;
}

class Character {
  Character({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.image,
    this.created,
    this.location,
    this.episode,
  });

  String id;
  String name;
  String status;
  String species;
  String type;
  String gender;
  String image;
  String created;
  Location location;
  List<Episode> episode;

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json['id'],
        name: json['name'],
        status: json['status'],
        species: json['species'],
        type: json['type'],
        gender: json['gender'],
        image: json['image'],
        created: json['created'],
        location: Location.fromJson(json['location']),
        episode:
            List<Episode>.from(json['episode'].map((x) => Episode.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'status': status,
        'species': species,
        'type': type,
        'gender': gender,
        'image': image,
        'created': created,
        'location': location,
        'episode': List<dynamic>.from(episode.map((x) => x.toJson())),
      };
}

class Location {
  Location({
    this.id,
    this.name,
    this.type,
    this.dimension,
    this.created,
  });

  String id;
  String name;
  String type;
  String dimension;
  String created;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json['id'],
        name: json['name'],
        type: json['type'],
        dimension: json['dimension'],
        created: json['created'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'dimension': dimension,
        'created': created,
      };
}

class Episode {
  Episode({
    this.id,
    this.name,
    this.air_date,
    this.episode,
    this.created,
  });

  String id;
  String name;
  String air_date;
  String episode;
  String created;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        id: json['id'],
        name: json['name'],
        air_date: json['air_date'],
        episode: json['episode'],
        created: json['created'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'air_date': air_date,
        'episode': episode,
        'created': created,
      };
}
