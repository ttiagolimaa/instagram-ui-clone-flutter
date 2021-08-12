import 'package:faker/faker.dart';

class ProfilePost {
  final String name;
  final String srcPhotoProfile;
  final String srcPhotoPost;

  ProfilePost({
    required this.name,
    required this.srcPhotoProfile,
    required this.srcPhotoPost,
  });

  @override
  String toString() => 'StorieData(name: $name, urlPhoto: $srcPhotoProfile)';
}
