import 'package:dartz/dartz.dart';

import '../entities/post_entity.dart';

abstract class ISendDelete{
  Future<Either<Exception, void>> sendDelete(PostEntity entity);
}