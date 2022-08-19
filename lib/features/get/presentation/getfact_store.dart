import 'package:mobx_triple/mobx_triple.dart';

import '../domain/usecases/get_facts_usecase.dart';

class GetFactStore extends MobXStore<Exception, List<dynamic>> {
  final IGetFactsUseCase usecase;

  GetFactStore(this.usecase) : super(<dynamic>[]);

  Future<void> getFacts() async {
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
