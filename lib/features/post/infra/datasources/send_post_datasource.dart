import 'package:uno_example/features/post/domain/entities/post_entity.dart';

abstract class ISendPostDataSource{
  Future<List<PostEntity>> postTest(PostEntity entity);
}