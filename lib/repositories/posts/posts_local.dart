import 'package:mvvm_api_flutter/models/post_model.dart';
import 'package:mvvm_api_flutter/repositories/posts/post_repository.dart';

class PostsLocal extends PostsRepository{
  @override
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
  // Data local
}