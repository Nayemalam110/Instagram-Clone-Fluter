import 'package:flutter/material.dart';
import 'package:insta_clone/models/testModels/post_models.dart';

class Post extends StatelessWidget {
  TestPostModel item;
  Post(this.item);

  String im = "https://robohash.org/1";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 250,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(item.link != null ? item.link! : im),
                  fit: BoxFit.contain),
            ),
            height: 180,
            width: double.infinity,
            child: Text(item.id.toString()),
          ),
          Container(
            //height: 40,
            child: Text(item.caption.toString()),
          )
        ],
      ),
    );
  }
}
