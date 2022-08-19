import 'package:dartz/dartz.dart';
import 'package:uno_example/features/get/domain/entities/post_entity.dart';

abstract class ISendPostRepository{
  Future<Either<Exception, List<RequestEntity>>> postTest(RequestEntity entity);
}