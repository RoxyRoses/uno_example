import 'package:dartz/dartz.dart';

import '../../../post/domain/entities/post_entity.dart';

abstract class ISendPatchRepository {
  Future<Either<Exception, void>> sendPatch(PostEntity entity);
}
