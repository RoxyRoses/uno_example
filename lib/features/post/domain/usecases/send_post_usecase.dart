
import 'package:dartz/dartz.dart';
import 'package:uno_example/features/post/domain/entities/post_entity.dart';

abstract class ISendPost{
  Future<Either<Exception, List<dynamic>>> postTest(PostEntity entity);
}