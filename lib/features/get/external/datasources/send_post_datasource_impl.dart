import 'package:uno/uno.dart';
import 'package:uno_example/features/get/domain/entities/post_entity.dart';
import 'package:uno_example/features/get/infra/models/post_entity_dto.dart';

import '../../infra/datasources/send_post_datasource.dart';

class SendPostDataSource implements ISendPostDataSource {
  final Uno uno;
  final entity = PostEntity(body: 'Hello', title: 'post test');

  SendPostDataSource(this.uno);

  @override
  Future<List<PostEntity>> postTest(entity) async {
    try {
      final List<PostEntity> list = [];
      uno
          .post(
              'https://jsonplaceholder.typicode.com/posts/?title=${entity.title}&body=${entity.body}')
          .then(
            (value) async => list.add(
              PostEntityDto.fromMap(value.data),
            ),
          );
      return list;
    } catch (e) {
      throw Exception(e);
    }
  }
}
