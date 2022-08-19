import 'package:dartz/dartz.dart';

import '../../../get/domain/entities/post_entity.dart';


abstract class ISendDelete{
  Future<Either<Exception, List<RequestEntity>>> sendDelete(RequestEntity entity);
}