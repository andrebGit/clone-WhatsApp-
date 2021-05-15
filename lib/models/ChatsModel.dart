import 'package:flutter/material.dart';

class ChatModel {
  final String name;
  final String messege;
  final String time;
  final String avatarUrl;

  ChatModel({
    this.name,
    this.messege,
    this.time,
    this.avatarUrl,
  });
  forGodate() {
    List<ChatModel> dates = [];
    for (var i = 0; i < 10; i++) {
      dates[i] = ChatModel(
        name: 'Fernandoda Silva',
        messege: 'Ola Flutter, Você é muito bom',
        time: '15:30',
        avatarUrl: 'img/1.png',
      );
    }
    return dates;
  }
}

List<ChatModel> dummyDate = forGodate();

forGodate() {
  List<ChatModel> dates = [];
  String hour = '';
  for (var i = 0; i < 10; i++) {
    if (i < 10) {
      hour = '0${i.toString()}';
    }
    dates.add(ChatModel(
      name: 'Fernandoda Silva',
      messege: 'Ola Flutter, Você é muito bom',
      time: '17:${hour}',
      avatarUrl: 'img/1.png',
    ));
  }
  return dates;
}
