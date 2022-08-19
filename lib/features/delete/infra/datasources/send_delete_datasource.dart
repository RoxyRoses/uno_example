import '../../../post/domain/entities/post_entity.dart';

abstract class ISendDeleteDataSource {
  Future<List<PostEntity>> sendDelete(PostEntity entity);
}