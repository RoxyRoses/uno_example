
import '../../../get/domain/entities/request_entity.dart';

abstract class ISendDeleteDataSource {
  Future<List<RequestEntity>> sendDelete(RequestEntity entity);
}