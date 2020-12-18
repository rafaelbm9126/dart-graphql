import 'dart:convert';
import 'package:funcionalidad/type.dart';

RickAndMorty rickAndMortyFromJson(String str) =>
    RickAndMorty.fromJson(json.decode(str));

String rickAndMortyToJson(RickAndMorty data) => json.encode(data.toJson());

class RickAndMorty {
  RickAndMorty({
    this.data,
  });

  Data data;

  factory RickAndMorty.fromJson(Map<String, dynamic> json) => RickAndMorty(
        data: Data.fromJson(json['data']),
      );

  Map<String, dynamic> toJson() => {
        'data': data.toJson(),
      };
}

class Data {
  Data({
    this.character,
  });

  Character character;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        character: Character.fromJson(json['character']),
      );

  Map<String, dynamic> toJson() => {
        'character': character.toJson(),
      };
}
