import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:draggable_fab/draggable_fab.dart';
import 'package:gps1/web1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'NOS 999'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        // ignore: prefer_const_constructors
        body: WebView(
          initialUrl: 'https://m.nos999.com/login',
          javascriptMode: JavascriptMode.unrestricted,
        ),
        floatingActionButton: DraggableFab(
          child: FloatingActionButton(
            onPressed: () { Navigator.push( 
              context,MaterialPageRoute(
                builder: (context) => const Web1()
                ),
                );},
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ) // This trailing com
        );
  }
}
