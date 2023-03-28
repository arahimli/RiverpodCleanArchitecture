
import 'package:equatable/equatable.dart';

import '../../domain/entities/joke_entity.dart';

class JokeModel extends JokeEntity with  EquatableMixin{
  JokeModel({String? iconUrl, String? id, String? url, String? value})
      : super(iconUrl: iconUrl, id: id, url: url, value: value);

  factory JokeModel.fromJson(Map<String, dynamic> json) {
    return JokeModel(
      iconUrl : json['icon_url'],
      id : json['id'],
      url : json['url'],
      value : json['value'],
    );
  }
}
