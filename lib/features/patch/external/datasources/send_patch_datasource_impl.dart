import 'package:uno/uno.dart';

import '../../../get/domain/entities/post_entity.dart';
import '../../infra/datasources/send_patch_datasource.dart';


class SendPatchDataSource implements ISendPatchDataSource {
  late Uno uno;
  final entity = RequestEntity(body: 'Hello', title: 'patch test', id: 1);

  SendPatchDataSource(this.uno);

  @override
  Future<List<RequestEntity>> sendPatch(entity) async {
    try {
      final response = await uno.patch('https://jsonplaceholder.typicode.com/posts/${entity.id}');
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