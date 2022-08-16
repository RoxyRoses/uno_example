import 'package:dartz/dartz.dart';

import '../../../post/domain/entities/post_entity.dart';

abstract class ISendPut{
  Future<Either<Exception, void>> sendPut(PostEntity entity);
}