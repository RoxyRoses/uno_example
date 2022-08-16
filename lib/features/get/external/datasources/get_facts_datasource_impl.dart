import 'package:uno/uno.dart';
import 'package:uno_example/features/get/domain/entities/cat_facts_entity.dart';

import '../../infra/datasources/get_facts_datasource.dart';
import '../../infra/models/cat_facts_dto.dart';

class GetFactsDataSource implements IGetFactsDataSource {
  final Uno uno;

  GetFactsDataSource(this.uno);

  @override
  Future<List<CatFacts>> getFacts() async {
    List<CatFacts> facts = [];

    try {
      final response = await uno.get('https://catfact.ninja/fact');
      if (response.status == 200) {
        facts.add(
          CatFactsDto.fromMap(response.data),
        );
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    }
    return facts;
  }
}
