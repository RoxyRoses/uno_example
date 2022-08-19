import 'package:dartz/dartz.dart';
import 'package:uno_example/features/delete/domain/usecases/send_delete_usecase.dart';
import 'package:uno_example/features/post/domain/entities/post_entity.dart';

import '../../domain/repositories/send_delete_repository.dart';

class SendDeleteUseCase implements ISendDelete {
  final ISendDeleteRepository _repository;

  SendDeleteUseCase(this._repository);

  @override
  Future<Either<Exception, List<PostEntity>>> sendDelete(PostEntity entity) {
    var results = _repository.sendDelete(entity);
    return results;
  }
}
