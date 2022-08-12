import 'package:dartz/dartz.dart';

import '../entities/post_entity.dart';

abstract class ISendPut{
  Future<Either<Exception, void>> sendPut(PostEntity entity);
}