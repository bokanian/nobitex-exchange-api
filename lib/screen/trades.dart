import 'package:flutter/material.dart';
import 'package:flutter_nobitex_api/model/http_server.dart';
import 'package:flutter_nobitex_api/model/post_model.dart';
import 'package:flutter_nobitex_api/screen/trades_details.dart';
import '../last_tarde_view.dart';
import 'package:intl/intl.dart';

class TradesScreen extends StatelessWidget {
  final String selectCurrency;
  TradesScreen({this.selectCurrency = 'USDTIRT'});

  final HttpRequest httpRequest = HttpRequest();

  @override
  Widget build(BuildContext context) {
    print(selectCurrency);
    return Scaffold(
        appBar: AppBar(
          title: Text('Trades'),
        ),
        body: FutureBuilder(
            future: httpRequest.getPost(selectCurrency),
            builder:
                (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
              if (snapshot.hasData) {
                List<Post> posts = snapshot.data;

                return ListView(
                    children: posts
                        .map((Post post) => LastTradeView(
                              time: DateFormat.Hms()
                                  .format(DateTime.fromMillisecondsSinceEpoch(
                                      post.time))
                                  .toString(),
                              price: post.price,
                              volume: post.volume,
                              value: post.type,
                              onTab: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TradesDetails(post: post))),
                            ))
                        .toList());
                //end line
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}
