import 'package:dartz/dartz.dart';

import '../../../get/domain/entities/request_entity.dart';

abstract class ISendPutRepository {
  Future<Either<Exception, List<RequestEntity>>> sendPut(RequestEntity entity);
}
