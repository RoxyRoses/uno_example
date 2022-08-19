import 'package:mobx_triple/mobx_triple.dart';
import 'package:uno_example/features/get/domain/entities/post_entity.dart';
import 'package:uno_example/features/patch/domain/usecases/send_patch_usecase.dart';


class SendPatchStore extends MobXStore<Exception, List<RequestEntity>> {
  final ISendPatchUseCase usecase;
  SendPatchStore(this.usecase) :  super(<RequestEntity>[]);

  Future<void> sendPatch() async {
  final entity = RequestEntity(title: 'teste', body: 'body');
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    final result = await usecase.sendPatch(entity);
    result.fold((l) {
      setError(l);
      setLoading(false);
    }, (r) {
      update(r);
    });
  }
}
