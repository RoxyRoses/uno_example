import 'package:dartz/dartz.dart';

import '../../domain/repositories/get_facts_repository.dart';
import '../../domain/usecases/get_facts_usecase.dart';

class GetFactsUseCase implements IGetFactsUseCase{
   final IGetFactsRepository _repository;

  GetFactsUseCase(this._repository);

  @override
  Future<Either<Exception, List<dynamic>>> getFacts() async {
    var results = _repository.getFacts();
    return results;
  }
}