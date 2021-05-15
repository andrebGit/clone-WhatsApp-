import 'package:clone/models/CallsModel.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyDateState.length,
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
                dummyDateState[i].avatarUrl,
              ),
              //para usa com imagem via URL
              //backgroundImage: NetworkImage(dummyDateState[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dummyDateState[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                dummyDateState[i].icon,
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                dummyDateState[i].messege,
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
