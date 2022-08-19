import 'package:dartz/dartz.dart';

import '../../../get/domain/entities/request_entity.dart';


abstract class ISendDeleteRepository{
  Future<Either<Exception, List<RequestEntity>>> sendDelete(RequestEntity entity);
}