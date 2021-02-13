import 'package:flutter/material.dart';
import 'package:flutter_nobitex_api/model/post_model.dart';

class TradesDetails extends StatelessWidget {
  final Post post;

  const TradesDetails({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.type),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('time'),
                  subtitle: Text(post.time.toString()),
                ),
                ListTile(
                  title: Text('price'),
                  subtitle: Text(post.price),
                ),
                ListTile(
                  title: Text('volume'),
                  subtitle: Text(post.volume),
                ),
                ListTile(
                  title: Text('type'),
                  subtitle: Text(post.type),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
