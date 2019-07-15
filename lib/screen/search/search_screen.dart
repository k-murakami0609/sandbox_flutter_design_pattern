import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/screen/repository/user_repository_screen.dart';

class UserData {
  String _name;
  String _description;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  UserData(this._name, this._description);
}

class SearchScreen extends StatelessWidget {
  final List<UserData> users = [
    UserData("name", "description"),
    UserData("name12", "description3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('検索 Route'),
      ),
      body: ListView(
        children: users.map((user) => 
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text(user._name),
              subtitle: Text(
                user._description
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserRepositoryScreen()),
                );
              }
            )
          )
        ).toList()
      ),
    );
  }
}