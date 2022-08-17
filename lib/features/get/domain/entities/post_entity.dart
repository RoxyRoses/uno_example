class PostEntity {
  final String title;
  final String body;
  final int id;
  final int userId;

  PostEntity(
      {required this.title, required this.body, this.id = 0, this.userId = 0});
}
