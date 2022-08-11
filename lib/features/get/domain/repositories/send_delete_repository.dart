import 'package:dartz/dartz.dart';

import '../entities/post_entity.dart';

abstract class ISendDeleteRepository{
  Future<Either<Exception, void>> sendDelete(PostEntity entity);
}