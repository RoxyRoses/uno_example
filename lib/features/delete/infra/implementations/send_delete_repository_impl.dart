import 'package:dartz/dartz.dart';
import 'package:uno_example/features/post/domain/entities/post_entity.dart';

import '../../domain/repositories/send_delete_repository.dart';
import '../datasources/send_delete_datasource.dart';

class SendDeleteRepository implements ISendDeleteRepository {
  final ISendDeleteDataSource dataSource;

  SendDeleteRepository(this.dataSource);

  @override
  Future<Either<Exception, List<PostEntity>>> sendDelete(
      PostEntity entity) async {
    try {
      final result = await dataSource.sendDelete(entity);

      return Right(result);
    } catch (e) {
      return Left(Exception());
    }
  }
}
