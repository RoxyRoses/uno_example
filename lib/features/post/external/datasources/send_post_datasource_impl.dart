import 'package:uno/uno.dart';
import 'package:uno_example/features/post/domain/entities/post_entity.dart';
import 'package:uno_example/features/post/infra/models/post_entity_dto.dart';

import '../../infra/datasources/send_post_datasource.dart';

class SendPostDataSource implements ISendPostDataSource {
  late Uno uno;
  SendPostDataSource(this.uno);

  @override
  Future<List<PostEntity>> postTest(entity) async {
    final List<PostEntity> list = [];
    try {
      uno
          .post('https://jsonplaceholder.typicode.com/posts/?title=${entity.title}&body=${entity.body}')
          .then(
            (value) async => list.add(
              PostEntityDto.fromMap(value.data),
            ),
          )
          .catchError((error) {
        if (error.response != null) {
          print(error.response.data);
          print(error.response.status);
          print(error.response.headers);
        } else if (error.request != null) {
          print(error.request);
        } else {
          print('Error ${error.message}');
        }
      });
    } catch (e) {
      throw Exception(e);
    }
    return list;
  }
}
