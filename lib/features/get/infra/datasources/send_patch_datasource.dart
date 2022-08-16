import '../../../post/domain/entities/post_entity.dart';

abstract class ISendPatchDataSource{
  Future<void> sendPatch(PostEntity entity);
}