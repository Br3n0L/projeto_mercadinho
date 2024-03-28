import 'package:projeto_login_page/models/post.models.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
