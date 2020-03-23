import 'package:baltablog/models/post.model.dart';
import 'package:baltablog/pages/details.page.dart';
import 'package:baltablog/repositories/post.repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var repository = new PostRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog do balta"),
      ),
      body: FutureBuilder(
        future: repository.getAll(),
        builder: (ctx, snp) {
          if (snp.hasData) {
            List<Post> posts = snp.data;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (ctx, i) {
                return ListTile(
                  title: Text(posts[i].title),
                  subtitle: Text(posts[i].author.name),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          tag: posts[i].meta.url,
                        ),
                      ),
                    );
                  },
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
