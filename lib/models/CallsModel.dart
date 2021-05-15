import 'package:flutter/material.dart';

class CallsModel {
  final String name;
  final String messege;
  final Icon icon;
  final String avatarUrl;

  CallsModel({
    this.name,
    this.messege,
    this.icon,
    this.avatarUrl,
  });
}

List<CallsModel> dummyDateState = forGodate();

forGodate() {
  List<CallsModel> dates = [];
  String minutes = '';
  for (var i = 0; i < 10; i++) {
    if (i < 10) {
      minutes = '0${i.toString()}';
    }
    dates.add(CallsModel(
      name: 'Fernandoda Silva',
      messege: '12 de maio 09:${minutes}',
      icon: Icon(
        Icons.call,
        color: Colors.green,
      ),
      avatarUrl: 'img/1.png',
    ));
  }
  return dates;
}
