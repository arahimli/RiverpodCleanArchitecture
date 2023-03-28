import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class JokeEntity extends Equatable{
  final String? iconUrl;
  final String? id;
  final String? url;
  final String? value;

  const JokeEntity({this.iconUrl, this.id, this.url, this.value});

  @override
  List<Object?> get props => [id];

}