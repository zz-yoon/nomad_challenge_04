

import 'package:flutter/material.dart';
import 'package:nomad_challenge_04/constants/gaps.dart';
import 'package:nomad_challenge_04/screens/data/models/post_model.dart';

class PostCard extends StatelessWidget {
  final PostModel post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical : 10),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
            children: [
              // 프로필
                CircleAvatar(
                  backgroundImage: NetworkImage(post.profileImage ?? 'https://nomadcoders.co/m.svg'),
                ),
              Gaps.v10,
              Text(post.username, style : TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              Spacer(),
              Icon(Icons.more_horiz),
            ],
            ),
          ],
        ),
      ),
    );
  }
}
