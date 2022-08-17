import 'package:dartz/dartz.dart';

import '../../domain/repositories/get_facts_repository.dart';
import '../datasources/get_facts_datasource.dart';

class GetFactsRepository implements IGetFactsRepository {
  final IGetFactsDataSource dataSource;

  GetFactsRepository(this.dataSource);

  @override
  Future<Either<Exception, List<dynamic>>> getFacts() async {
    try {
      final result = await dataSource.getFacts();

      return Right(result);
    } catch (e) {
      return Left(Exception());
    }
  }
}
