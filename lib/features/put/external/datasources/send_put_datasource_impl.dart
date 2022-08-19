import 'package:uno/uno.dart';

import '../../../get/domain/entities/request_entity.dart';
import '../../infra/datasources/send_put_datasource.dart';

class SendPutDataSource implements ISendPutDataSource{
  late Uno uno;
  final entity = RequestEntity(body: 'Hello', title: 'post test', id: 1);

  SendPutDataSource(this.uno);

  @override
  Future<List<RequestEntity>> sendPut(entity) async {
      try {
      final response = await uno.put('https://jsonplaceholder.typicode.com/posts/${entity.id}');
      if (response.status != 404) {
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