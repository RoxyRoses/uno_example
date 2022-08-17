import 'package:uno/uno.dart';

import '../../../post/infra/models/post_entity_dto.dart';
import '../../infra/datasources/get_facts_datasource.dart';

class SendGetDataSource implements IGetFactsDataSource {
  late Uno uno;

  SendGetDataSource(this.uno);

  @override
  Future<List<dynamic>> getFacts() async {
   
    try {
      final response = await uno.get('https://jsonplaceholder.typicode.com/posts');
      if (response.status == 200) {
        final list = ((response.data as List)
          .map((e) => PostEntityDto.fromMap(e))
          .toList());
        return list;
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
