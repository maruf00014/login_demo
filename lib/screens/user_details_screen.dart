import 'package:flutter/material.dart';
import '../models/user.dart';

class UserDetailsScreen extends StatefulWidget {
  static const routeName = '/user_details';

  const UserDetailsScreen({Key? key}) : super(key: key);

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(user.name),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width * 0.1),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    spreadRadius: 4,
                    blurRadius: 3),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.3,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          user.image,
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Text(
                user.name,
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.065),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                user.designation,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.045),
              ),
              Text(
                user.email,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.045),
              ),
              Text(
                user.phone,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.045),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
