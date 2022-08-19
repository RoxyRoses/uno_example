import 'package:uno/uno.dart';
import 'package:uno_example/features/get/domain/entities/post_entity.dart';

import '../../infra/datasources/send_post_datasource.dart';

class SendPostDataSource implements ISendPostDataSource {
  late Uno uno;
  SendPostDataSource(this.uno);

  @override
  Future<List<RequestEntity>> postTest(entity) async {
    try {
      final response = await uno.post('https://jsonplaceholder.typicode.com/posts/?title=${entity.title}&body=${entity.body}');
      if (response.status == 201) {
        final list =[ RequestEntity(title: 'title', body: 'body', status: response.status)];
        return list;
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
