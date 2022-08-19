
import 'package:uno_example/features/get/domain/entities/post_entity.dart';

abstract class ISendPutDataSource {
  Future<void> sendPut(RequestEntity entity);
}