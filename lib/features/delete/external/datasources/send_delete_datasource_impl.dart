import 'package:uno/uno.dart';

import '../../../post/domain/entities/post_entity.dart';
import '../../infra/datasources/send_delete_datasource.dart';

class SendDeleteDataSource implements ISendDeleteDataSource{
  late Uno uno;
  final entity = PostEntity(body: 'Hello', title: 'post test', id: 1);

  SendDeleteDataSource(this.uno);

  @override
  Future<List<PostEntity>> sendDelete(entity) async {
    try {
      final response = await uno.delete('https://jsonplaceholder.typicode.com/posts/${entity.id}');
      if (response.status != 404) {
        final list =[ PostEntity(title: 'title', body: 'body', status: response.status)];
        return list;
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}