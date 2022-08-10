import 'dart:convert';

import '../../domain/entities/post_entity.dart';

class PostEntityDto extends PostEntity {
  PostEntityDto({required super.title, required super.body, super.id});

  factory PostEntityDto.fromMap(Map<String, dynamic> map) {
    return PostEntityDto(
      title: map['title'] ?? '',
      body: map['body'] ?? '',
      id: map['id'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'body': body});
    result.addAll({'id': id});

    return result;
  }

  String toJson() => json.encode(toMap());

  factory PostEntityDto.fromJson(String source) =>
      PostEntityDto.fromMap(json.decode(source));
}

