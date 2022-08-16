import 'package:dartz/dartz.dart';

import '../../../post/domain/entities/post_entity.dart';

abstract class ISendPatch {
  Future<Either<Exception, void>> sendPatch(PostEntity entity);
}
