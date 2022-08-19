class RequestEntity {
  final String title;
  final String body;
  final int id;
  final int userId;
  final int status;

  RequestEntity(
      {required this.title, required this.body, this.id = 0, this.userId = 0, this.status = 0});

  RequestEntity copyWith({
    String? title,
    String? body,
    int? id,
    int? userId,
    int? status,
  }) {
    return RequestEntity(
      title: title ?? this.title,
      body: body ?? this.body,
      id: id ?? this.id,
      userId: userId ?? this.userId,
      status: status?? this.status,
    );
  }
}
