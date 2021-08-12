import 'package:faker/faker.dart';

class Storie {
  final String name;
  final String srcPhoto;
  final bool isLive;
  final bool isProfile;

  Storie({
    required this.name,
    required this.srcPhoto,
    this.isLive = false,
    this.isProfile = false,
  });

  @override
  String toString() => 'StorieData(name: $name, urlPhoto: $srcPhoto)';
}
