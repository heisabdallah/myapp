import 'package:flutter/material.dart';
import 'package:my_app/components/box.dart';
import 'package:my_app/components/circle.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    final List posts = [
      "POST 1",
      "POST 2",
      "POST 3",
      "POST 4",
      "POST 5",
      "POST 6",
      "POST 7",
    ];
    final List stories = [
      "STORY 1",
      "STORY 2",
      "STORY 3",
      "STORY 4",
      "STORY 5",
      "STORY 6",
      "STORY 7",
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "Feed",
          ),
          toolbarHeight: 40,
          // backgroundColor: Color.fromARGB(255, 67, 38, 117),
        ),
        body: Column(
          children: [
            // Stories
            SizedBox(
              height: 80,
              child: ListView.builder(
                  itemCount: stories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Circle(
                      child: stories[index],
                    );
                  }),
            ),

            // Posts
            Expanded(
              child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Box(
                      child: posts[index],
                    );
                  }),
            ),
          ],
        ));
  }
}
