import '../../../get/domain/entities/post_entity.dart';

abstract class ISendPatchDataSource{
  Future<List<RequestEntity>> sendPatch(RequestEntity entity);
}