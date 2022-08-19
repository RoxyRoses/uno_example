import 'package:uno/uno.dart';

import '../../domain/entities/post_entity.dart';
import '../../infra/datasources/send_put_datasource.dart';

class SendPutDataSource implements ISendPutDataSource{
  late Uno uno;
  final entity = RequestEntity(body: 'Hello', title: 'post test', id: 1);

  SendPutDataSource(this.uno);

  @override
  Future<void> sendPut(entity) async {
     uno = Uno(
        baseURL: 'https://jsonplaceholder.typicode.com/posts/',
        timeout: const Duration(seconds: 30),
        headers: {'teste': 'teste'});

        try {
          uno(method: 'put',
          url: '${uno.baseURL}${entity.id}')
         .catchError((onError){
            if(onError.Response.status != 200){
              throw Exception();
            }
          });
        } catch (e) {
          throw(Exception(e));
        }
  }
}