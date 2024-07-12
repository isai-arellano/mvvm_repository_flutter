import 'package:flutter/material.dart';
import 'package:mvvm_api_flutter/repositories/posts/posts_api.dart';
import 'package:mvvm_api_flutter/view_models/post_view_model.dart';
import 'package:mvvm_api_flutter/view_models/posts_view_model.dart';

class PostsView extends StatelessWidget {
  PostsView({super.key});
  // Dependency injection
  // Here you can inject any repository, for example local or a fake for testing
  // Example :var postsViewModel = PostsViewModel(postsRepository: PostsFake());
  var postsViewModel = PostsViewModel(postsRepository: PostsApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postsViewModel.title),
      ),
      body: Center(
        child: FutureBuilder<List<PostViewModel>>(
          future: postsViewModel.fetchAllPosts(),
          builder: (context, snapshot) {
             if(snapshot.connectionState == ConnectionState.waiting){
                return const CircularProgressIndicator();
             }else {
              var posts = snapshot.data;
                return ListView.builder(
                  itemCount: posts?.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(posts![index].title),
                  ),
                );
             }
            },
          ),
      ),
    );
  }
}