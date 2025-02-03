import 'package:flutter/cupertino.dart';
import 'package:nomad_challenge_04/screens/data/models/post_model.dart';
import 'package:nomad_challenge_04/screens/data/repositories/post_repository.dart';

class PostProvider with ChangeNotifier{
  final PostRepository _postRepository = PostRepository();
  List<PostModel> _posts = [];

  List<PostModel> get posts => _posts;

  void fetchPosts() {
    _posts = _postRepository.generateFakePosts(30);
    notifyListeners();
  }
}