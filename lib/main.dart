import 'package:flutter/material.dart';
import 'package:mvvm_api_flutter/views/posts/posts_view.dart';

main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostsView(),
    );
  }
}