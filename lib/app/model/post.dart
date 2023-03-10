class Post {
  int id;
  String post;
  String dateCreated;
  int userId;
  int? postOriginalId;

  Post(
      {required this.id,
      required this.post,
      required this.dateCreated,
      required this.userId,
      this.postOriginalId});
}
