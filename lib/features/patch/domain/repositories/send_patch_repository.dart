import 'package:dartz/dartz.dart';
import 'package:uno_example/features/get/domain/entities/request_entity.dart';


abstract class ISendPatchRepository {
  Future<Either<Exception, RequestEntity>> sendPatch(RequestEntity entity);
}
