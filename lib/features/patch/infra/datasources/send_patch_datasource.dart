import '../../../get/domain/entities/request_entity.dart';

abstract class ISendPatchDataSource{
  Future<List<RequestEntity>> sendPatch(RequestEntity entity);
}