import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('検索 Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('検索へ route'),
          onPressed: () {
            Navigator.pushNamed(context, '/favorite');
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}