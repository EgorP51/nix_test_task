import 'package:nix_test_task/ordering/data/models/user_model.dart';

///the [Data] class replaces receiving data from outside the application
class Data {
  static List<UserModel> savedUsers = [
    UserModel(
      fullName: 'Denilev Egor',
      email: 'egor_zu@email.com',
      phoneNumber: '+375726014690',
      country: 'Belarus',
      city: 'Minsk',
      address: 'Derzhinskogo 3b',
      postcode: '220069',
    ),
    UserModel(
      fullName: 'Ko Yuri',
      email: 'yuri@email.com',
      phoneNumber: '+375294545687',
      country: 'Italy',
      city: 'Naple',
      address: 'Via Toledo 256',
      postcode: '80100',
    ),
  ];
}
