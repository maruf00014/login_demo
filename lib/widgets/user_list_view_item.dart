import 'package:flutter/material.dart';
import 'package:login_demo/models/user.dart';
import 'package:login_demo/screens/user_details_screen.dart';

class UserListViewItem extends StatelessWidget {
  const UserListViewItem(this.user, {Key? key}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, UserDetailsScreen.routeName,arguments: user);
      },
      child: Container(
        margin: EdgeInsets.all(
          MediaQuery.of(context).size.width * 0.02,
        ),
        padding: EdgeInsets.all(
          MediaQuery.of(context).size.width * 0.02,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.03),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.10),
                spreadRadius: 4,
                blurRadius: 3),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(MediaQuery.of(context).size.width * 0.03),
              child: Image.asset(
                user.image,
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                ),
                Text(user.designation)
              ],
            )
          ],
        ),
      ),
    );
  }
}
