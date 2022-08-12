
import 'package:dartz/dartz.dart';
import 'package:uno_example/features/get/domain/entities/post_entity.dart';

abstract class ISendPost{
  Future<Either<Exception, List<PostEntity>>> postTest(PostEntity entity);
}