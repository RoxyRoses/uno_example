import 'package:dartz/dartz.dart';

import '../entities/post_entity.dart';

abstract class ISendPostRepository{
  Future<Either<Exception, List<dynamic>>> postTest(PostEntity entity);
}