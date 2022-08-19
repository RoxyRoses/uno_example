
import '../../../get/domain/entities/post_entity.dart';

abstract class ISendDeleteDataSource {
  Future<List<RequestEntity>> sendDelete(RequestEntity entity);
}