import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserRepositoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserRepositoryScreen'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('元の場所へ route')
        ),
      ),
    );
  }
}