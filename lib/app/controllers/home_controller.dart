import 'package:micro_app_home/app/model/post.dart';

class HomeController {
  List<Post> getPostsFromUser(int userId) {
    final post1 = Post(
        id: 1, post: "That's amazing 1", dateCreated: "2023-03-04", userId: 1);
    final post2 = Post(
        id: 2, post: "That's amazing  2", dateCreated: "2023-03-04", userId: 1);
    final post3 = Post(
        id: 3, post: "That's amazing  3", dateCreated: "2023-03-04", userId: 1);

    return <Post>[post1, post2, post3];
  }
}
