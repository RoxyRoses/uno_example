import 'package:dartz/dartz.dart';


abstract class IGetFactsRepository {
  Future<Either<Exception, List<dynamic>>> getFacts();
}
