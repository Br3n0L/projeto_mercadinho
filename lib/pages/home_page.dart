import 'package:flutter/material.dart';
import 'package:projeto_login_page/controlles/home_controller.dart';
import 'package:projeto_login_page/models/post.models.dart';
import 'package:projeto_login_page/repositories/home_repository_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());
  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home Page')),
      ),
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.separated(
              separatorBuilder: (_, __) => const Divider(),
              itemCount: list.length,
              itemBuilder: (_, idx) => ListTile(
                  leading: Text(list[idx].id.toString()),
                  title: Text(list[idx].title),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () => Navigator.of(context)
                      .pushNamed('/details', arguments: list[idx])),
            );
          }),
    );
  }
}
