import 'package:flutter/material.dart';

class UserFragment extends StatefulWidget {
  const UserFragment({Key? key}) : super(key: key);

  @override
  State<UserFragment> createState() => _UserFragmentState();
}

class _UserFragmentState extends State<UserFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
      ),
      backgroundColor: const Color(0xffFAFAFA),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "No User info",
            style: TextStyle(color: Colors.black, fontSize: 23),
          ),
          SizedBox(height: 5),
          Text("This content is not avaible, please code this page."),
        ],
      )),
    );
  }
}
