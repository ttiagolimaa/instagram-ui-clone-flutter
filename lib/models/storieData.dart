import 'package:faker/faker.dart';
import 'package:instagram_ui_clone/models/storie.dart';

var faker = new Faker();

class StorieData {
  static List<Storie> listStories = [
    Storie(
        isProfile: true,
        srcPhoto: 'assets/images/avatar.jpg',
        name: 'Seu story'),
    Storie(
        srcPhoto: 'assets/images/avatar05.jpeg',
        name: faker.person.firstName(),
        isLive: true),
    Storie(
        srcPhoto: 'assets/images/avatar01.jpeg',
        name: faker.person.firstName(),
        isLive: true),
    Storie(
        srcPhoto: 'assets/images/avatar07.jpeg',
        name: faker.person.firstName()),
    Storie(
        srcPhoto: 'assets/images/avatar08.jpeg',
        name: faker.person.firstName()),
    Storie(
        srcPhoto: 'assets/images/avatar02.jpeg',
        name: faker.person.firstName()),
    Storie(
        srcPhoto: 'assets/images/avatar03.jpeg',
        name: faker.person.firstName()),
    Storie(
        srcPhoto: 'assets/images/avatar04.jpeg',
        name: faker.person.firstName()),
    Storie(
        srcPhoto: 'assets/images/avatar06.jpeg',
        name: faker.person.firstName()),
  ];
}
