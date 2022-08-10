import 'dart:convert';

import '../../domain/entities/cat_facts_entity.dart';

class CatFactsDto extends CatFacts {
  CatFactsDto({required super.fact, required super.lenght});

  factory CatFactsDto.fromMap(Map<String, dynamic> map) {
    return CatFactsDto(
      fact: map['fact'] ?? '',
      lenght: map['lenght'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'fact': fact});
    result.addAll({'lenght': lenght});

    return result;
  }

  String toJson() => json.encode(toMap());

  factory CatFactsDto.fromJson(String source) =>
      CatFactsDto.fromMap(json.decode(source));
}

