import 'animals.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Private list of emails. Hardcoded here for testing purposes.
  final _animals = [
    Animal(
      id: 1,
      type: 'Pajaro',
      age: '2',
      image:
          'https://okdiario.com/img/2020/09/16/como-es-el-pajaro-oriol-655x368.jpg',
    ),
    Animal(
      id: 2,
      type: 'Gato',
      age: '3',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/220px-Cat_November_2010-1a.jpg',
    ),
    Animal(
      id: 3,
      type: 'Perro',
      age: '1',
      image: 'https://i.imgur.com/4zSAWJ5.jpeg',
    ),
    Animal(
      id: 4,
      type: 'Cebra',
      age: '4',
      image: 'https://i.imgur.com/D6J9hZA.jpeg',
    ),
    Animal(
      id: 5,
      type: 'Leon',
      age: '6',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Lion_waiting_in_Namibia.jpg/800px-Lion_waiting_in_Namibia.jpg',
    ),
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Animal> getAnimals() {
    return _animals;
  }
}
