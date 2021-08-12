import 'package:faker/faker.dart';
import 'package:instagram_ui_clone/models/storie.dart';

var faker = new Faker();

abstract class StorieData {
  static List<Storie> _listStories = [];

  static List<Storie> get listStories {
    if (_listStories.isEmpty) {
      _listStories = List.generate(6, (index) => Storie());
      _listStories.insertAll(0, [
        Storie(isProfile: true, name: 'Seu story'),
        Storie(isLive: true),
        Storie(isLive: true),
      ]);
    }
    print(_listStories);

    return [..._listStories];
  }
}
