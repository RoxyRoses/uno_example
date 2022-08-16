import '../../../post/domain/entities/post_entity.dart';

abstract class ISendDeleteDataSource {
  Future<void> sendDelete(PostEntity entity);
}