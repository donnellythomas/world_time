import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate network request for a username
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'Thomas';
    });
    //simulate network request to get bio of username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'A 19 year old male';
    });

    print('$name - $bio'); //waits for vairables to have values
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('hey there!'); //doesnt wait to print this
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
