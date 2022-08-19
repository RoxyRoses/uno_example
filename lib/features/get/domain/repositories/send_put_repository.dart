import 'package:dartz/dartz.dart';

import '../entities/post_entity.dart';


abstract class ISendPutRepository{
  Future<Either<Exception, void>> sendPut(RequestEntity entity);

}