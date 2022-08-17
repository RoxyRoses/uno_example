import 'package:uno_example/features/post/domain/entities/post_entity.dart';

abstract class ISendPostDataSource{
  Future<List<dynamic>> postTest(PostEntity entity);
}