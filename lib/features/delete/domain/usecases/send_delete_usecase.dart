import 'package:dartz/dartz.dart';

import '../../../post/domain/entities/post_entity.dart';

abstract class ISendDelete{
  Future<Either<Exception, List<PostEntity>>> sendDelete(PostEntity entity);
}