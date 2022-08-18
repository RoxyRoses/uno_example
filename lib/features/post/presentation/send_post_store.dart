import 'package:mobx_triple/mobx_triple.dart';

import '../../post/domain/entities/post_entity.dart';
import '../domain/usecases/send_post_usecase.dart';

class SendPostStore extends MobXStore<Exception, List<PostEntity>> {
  final ISendPost usecase;
  SendPostStore(this.usecase) :  super(<PostEntity>[]);

  Future<void> sendPost() async {
  final entity = PostEntity(title: 'teste', body: 'body');
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    final result = await usecase.postTest(entity);
    result.fold((l) {
      setError(l);
      setLoading(false);
    }, (r) {
      update(r);
    });
  }
}
