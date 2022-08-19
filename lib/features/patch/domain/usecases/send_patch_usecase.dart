import 'package:dartz/dartz.dart';

import '../../../get/domain/entities/request_entity.dart';


abstract class ISendPatchUseCase {
  Future<Either<Exception, List<RequestEntity>>> sendPatch(RequestEntity entity);
}
