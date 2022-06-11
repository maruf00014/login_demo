import 'dart:convert';

import '../models/user.dart';
import '../constants/dummy_data.dart';

List<User> getUsers() {
  List rawUserList = jsonDecode(jsonUserList);

  return rawUserList
      .map((e) => User(
          id: e['id'],
          name: e['name'],
          designation: e['designation'],
          image: e['image'],
          email: e['email'],
          phone: e['phone']))
      .toList();
}
