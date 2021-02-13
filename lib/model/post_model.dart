import 'package:flutter/foundation.dart';

class Post {
  final int time;
  final String price;
  final String volume;
  final String type;

  Post({
    @required this.time,
    @required this.price,
    @required this.volume,
    @required this.type,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      time: json['time'] as int,
      price: json['price'] as String,
      volume: json['volume'] as String,
      type: json['type'] as String,
    );
  }
}
