
import 'package:faker/faker.dart';
import 'package:nomad_challenge_04/screens/data/models/post_model.dart';

class PostRepository {
  final Faker faker = Faker();

  List<PostModel> generateFakePosts(int count) {
    return List.generate(count, (index) {
      return PostModel(
        username : faker.internet.userName(),
        profileImage: faker.image.loremPicsum(),
        postText : faker.lorem.sentence(),
        likes: faker.randomGenerator.integer(1000, min:10),
        replies: faker.randomGenerator.integer(500, min: 0),
        timeAgo: '${faker.randomGenerator.integer(24, min:1)}h',
      );
    });
  }
}