import 'package:dartz/dartz.dart';
import 'package:uno_example/features/get/domain/entities/post_entity.dart';
import 'package:uno_example/features/get/infra/implementations/send_post_repository_impl.dart';

import '../../domain/usecases/send_post_usecase.dart';

class SendPost implements ISendPost{
    final SendPostRepository _repository;

  SendPost(this._repository);

  @override
  Future<Either<Exception, List<PostEntity>>> postTest(PostEntity entity) {
    var results = _repository.postTest(entity);
    return results;
  }
}