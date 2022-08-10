import 'package:uno_example/features/get/domain/entities/post_entity.dart';

abstract class ISendPostDataSource{
  Future<List<PostEntity>> postTest(PostEntity entity);
}