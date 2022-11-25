import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web1 extends StatefulWidget {
  const Web1({super.key});

  @override
  State<Web1> createState() => _Web1State();
}

class _Web1State extends State<Web1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WEB1 PAGE'),
      ),
      body: const WebView(
        initialUrl: 'https://www.youtube.com/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
