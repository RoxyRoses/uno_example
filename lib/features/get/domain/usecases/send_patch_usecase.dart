import 'package:dartz/dartz.dart';

import '../entities/post_entity.dart';

abstract class ISendPatch {
  Future<Either<Exception, void>> sendPatch(PostEntity entity);
}
