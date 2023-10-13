import 'package:flutter/material.dart';
import 'package:insta_clone/models/testModels/post_models.dart';
import 'package:insta_clone/widgets/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = List<TestPostModel>.generate(
    50,
    (i) => i % 6 == 0
        ? TestPostModel(
            id: i,
            caption: "This is $i number test post",
            link: "https://robohash.org/$i")
        : TestPostModel(
            id: i,
            caption: "This is $i number test post with some new test item",
            link: "https://robohash.org/$i"),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: ListView.builder(
          itemBuilder: ((context, index) => Post(items[index])),
          itemCount: 20,
        ),
      )),
    );
  }
}
