import 'package:dartz/dartz.dart';


abstract class IGetFactsUseCase{
  Future<Either<Exception, List<dynamic>>> getFacts();
}