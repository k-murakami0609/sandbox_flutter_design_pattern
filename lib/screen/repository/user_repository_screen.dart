import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/screen/repository/repository_view_screen.dart';
import 'package:flutter_design_pattern/screen/repository/user_repository_screen.dart';

class UserRepositoryData {
  String _repositoryName;
  String _url;

  UserRepositoryData(this._repositoryName, this._url);

  String get repositoryName => _repositoryName;

  set repositoryName(String value) {
    _repositoryName = value;
  }

  String get url => _url;

  set url(String value) {
    _url = value;
  }
}

class UserRepositoryScreen extends StatelessWidget {
  final List<UserRepositoryData> users = [
    UserRepositoryData("repo1", "https://www.google.com"),
    UserRepositoryData("repo2", "https://www.google.com"),
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
                      title: Text(user._repositoryName),
                      subtitle: Text(
                          user._url
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RepositoryViewScreen()),
                        );
                      }
                  )
              )
          ).toList()
      ),
    );
  }
}