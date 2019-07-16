import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RepositoryViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('レポジトリ'),
      ),
      body: WebView(
        initialUrl: 'https://flutter.io',
      ),
    );
  }
}
