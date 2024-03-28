import 'package:dio/dio.dart';
import 'package:projeto_login_page/models/post.models.dart';
import 'package:projeto_login_page/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    final dio = Dio();
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    return (response.data as List<dynamic>)
        .map((e) => PostModel.fromJson(e))
        .toList();
  }
}
