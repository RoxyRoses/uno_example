import 'package:dartz/dartz.dart';

import '../entities/post_entity.dart';

abstract class ISendPatchRepository {
  Future<Either<Exception, void>> sendPatch(PostEntity entity);
}
