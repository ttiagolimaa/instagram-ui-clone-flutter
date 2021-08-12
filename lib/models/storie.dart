import 'package:faker/faker.dart';

class Storie {
  late final String name;
  late final String urlPhoto;
  final bool isLive;
  final bool isProfile;

  Storie(
      {String? name, urlPhoto, this.isLive = false, this.isProfile = false}) {
    this.name = name ?? faker.person.firstName();
    this.urlPhoto = urlPhoto ??
        faker.image.image(
            height: 100,
            width: 100,
            keywords: ['face', 'people', 'man', 'woman'],
            random: true);
  }

  @override
  String toString() => 'StorieData(name: $name, urlPhoto: $urlPhoto)';
}
