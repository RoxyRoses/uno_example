import 'package:dartz/dartz.dart';
import 'package:uno_example/features/get/domain/entities/post_entity.dart';
import 'package:uno_example/features/get/domain/repositories/send_post_repository.dart';
import 'package:uno_example/features/get/infra/datasources/send_post_datasource.dart';

class SendPostRepository implements ISendPostRepository{
  final ISendPostDataSource dataSource;

  SendPostRepository({required this.dataSource});
  @override
  Future<Either<Exception, List<PostEntity>>> postTest(PostEntity entity) async {
     try {
    final result = await dataSource.postTest(entity);

    return Right(result);
      
    } catch (e) {
      return Left(Exception());
    }
  }
}