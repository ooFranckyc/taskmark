import 'package:flutter/material.dart';

class BagFragment extends StatefulWidget {
  const BagFragment({Key? key}) : super(key: key);

  @override
  State<BagFragment> createState() => _BagFragmentState();
}

class _BagFragmentState extends State<BagFragment> {
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
            "No Bag info",
            style: TextStyle(color: Colors.black, fontSize: 23),
          ),
          SizedBox(height: 5),
          Text("This content is not avaible, please code this page."),
        ],
      )),
    );
  }
}
