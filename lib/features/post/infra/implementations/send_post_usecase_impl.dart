import 'package:dartz/dartz.dart';
import 'package:uno_example/features/post/domain/entities/post_entity.dart';
import 'package:uno_example/features/post/infra/implementations/send_post_repository_impl.dart';

import '../../domain/usecases/send_post_usecase.dart';

class SendPostUseCase implements ISendPost{
    final SendPostRepository _repository;

  SendPostUseCase(this._repository);

  @override
  Future<Either<Exception, List<dynamic>>> postTest(PostEntity entity) {
    var results = _repository.postTest(entity);
    return results;
  }
  
}