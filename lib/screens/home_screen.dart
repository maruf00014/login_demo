import 'package:flutter/material.dart';
import 'package:login_demo/api/parser.dart';
import 'package:login_demo/widgets/user_list_view_item.dart';
import '../models/user.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> _userList = [];

  @override
  initState() {
    super.initState();
    _userList = getUsers();
    _userList += _userList;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Login Demo')),
        body: ListView.builder(
            itemCount: _userList.length,
            itemBuilder: (context, index) {
              return UserListViewItem(_userList.elementAt(index));
            }),
      ),
    );
  }
}
