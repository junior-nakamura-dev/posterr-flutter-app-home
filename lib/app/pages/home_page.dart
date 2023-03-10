import 'package:flutter/material.dart';
import 'package:micro_app_home/app/controllers/home_controller.dart';
import 'package:micro_commons_design_system/widgets/card/custom_card_widget.dart';
import 'package:micro_core/app/micro_core_utils.dart';

class HomePage extends StatefulWidget {
  final HomeController controller;

  const HomePage({Key? key, required this.controller}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> cards() {
    final posts = widget.controller.getPostsFromUser(1);
    return posts
        .map((post) => CustomCardWidget(
            icon: Icons.book, title: 'id ${post.id}', content: post.post))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.max, children: [...cards()]),
      ),
    );
  }
}
