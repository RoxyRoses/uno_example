import 'package:uno/uno.dart';
import 'package:uno_example/features/get/domain/entities/post_entity.dart';
import 'package:uno_example/features/get/infra/models/post_entity_dto.dart';

import '../../infra/datasources/send_post_datasource.dart';

class SendPostDataSource implements ISendPostDataSource {
  late Uno uno;
  final entity = PostEntity(body: 'Hello', title: 'post test');

  SendPostDataSource(this.uno);

  @override
  Future<List<PostEntity>> postTest(entity) async {
    final List<PostEntity> list = [];
    uno = Uno(
        baseURL: 'https://jsonplaceholder.typicode.com/posts/',
        timeout: const Duration(seconds: 30),
        headers: {'teste': 'teste'});

    try {
      uno
          .post('${uno.baseURL}?title=${entity.title}&body=${entity.body}')
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
