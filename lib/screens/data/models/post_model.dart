class PostModel {
  final String username;
  final String? profileImage;
  final String? postText;
  final int? likes;
  final int? replies;
  final String timeAgo;

  PostModel(
      {required this.username,
      required this.profileImage,
      required this.postText,
      required this.likes,
      required this.replies,
      required this.timeAgo});
}
