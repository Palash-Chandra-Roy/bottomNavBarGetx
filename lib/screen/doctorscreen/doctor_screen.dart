import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
   DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text("Doctor Screen",style: TextStyle(fontSize: 20,color:Colors.red),),
      ),
    );
  }
}
