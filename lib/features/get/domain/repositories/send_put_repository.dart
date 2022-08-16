import 'package:dartz/dartz.dart';

import '../../../post/domain/entities/post_entity.dart';

abstract class ISendPutRepository{
  Future<Either<Exception, void>> sendPut(PostEntity entity);

}