import 'package:flutter/material.dart';
import 'package:clone/models/ChatsModel.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyDate.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(
                dummyDate[i].avatarUrl,
              ),
              //para usa com imagem via URL
              //backgroundImage: NetworkImage(dummyDate[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dummyDate[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  dummyDate[i].time,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                )
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                dummyDate[i].messege,
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
