import 'package:dartz/dartz.dart';
import 'package:uno_example/features/get/domain/entities/post_entity.dart';


abstract class ISendPatchRepository {
  Future<Either<Exception, List<RequestEntity>>> sendPatch(RequestEntity entity);
}
