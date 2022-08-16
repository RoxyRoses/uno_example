import 'package:uno/uno.dart';

import '../../../post/domain/entities/post_entity.dart';
import '../../infra/datasources/send_patch_datasource.dart';

class SendPatchDataSource implements ISendPatchDataSource {
  late Uno uno;
  final entity = PostEntity(body: 'Hello', title: 'post test', id: 1);

  SendPatchDataSource(this.uno);

  @override
  Future<void> sendPatch(entity) async {
    uno = Uno(
        baseURL: 'https://jsonplaceholder.typicode.com/posts/',
        timeout: const Duration(seconds: 30),
        headers: {'teste': 'teste'});

    try {
      uno.patch('${uno.baseURL}${entity.id}').catchError((onError) {
        if (onError.Response.status != 200) {
          throw Exception();
        }
      });
    } catch (e) {
      throw (Exception(e));
    }
  }
}
