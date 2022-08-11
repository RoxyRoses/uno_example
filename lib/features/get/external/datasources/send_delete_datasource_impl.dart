import 'package:uno/uno.dart';

import '../../domain/entities/post_entity.dart';
import '../../infra/datasources/send_delete_datasource.dart';

class SendDeleteDataSource implements ISendDeleteDataSource{
  late Uno uno;
  final entity = PostEntity(body: 'Hello', title: 'post test', id: 1);

  SendDeleteDataSource(this.uno);

  @override
  Future<void> sendDelete(entity) async {
     uno = Uno(
        baseURL: 'https://jsonplaceholder.typicode.com/posts/',
        timeout: const Duration(seconds: 30),
        headers: {'teste': 'teste'});

        try {
          uno
          .delete('${uno.baseURL}${entity.id}').catchError((onError){
            if(onError.Response.status != 200){
              throw Exception();
            }
          });
        } catch (e) {
          throw(Exception(e));
        }
  }
}