import '../../../post/domain/entities/post_entity.dart';

abstract class ISendPutDataSource {
  Future<void> sendPut(PostEntity entity);
}