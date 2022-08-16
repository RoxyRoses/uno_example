

import 'package:mobx_triple/mobx_triple.dart';
import 'package:uno_example/features/get/domain/entities/cat_facts_entity.dart';

import '../domain/usecases/get_facts_usecase.dart';

class GetFactStore extends MobXStore<Exception, List<CatFacts>> {
  final IGetFactsUseCase usecase;

  GetFactStore(this.usecase) : super(<CatFacts>[]);

  Future<void> getCatFacts() async {
    
      setLoading(true);
      await Future.delayed(const Duration(seconds: 2));
      final result = await usecase.getFacts();
      result.fold((l) {
        setError(l);
        setLoading(false);
      }, (r) {
        update(r);
      });
  }
}