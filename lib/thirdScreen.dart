import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),

      body: Center(
        child: ElevatedButton (
          onPressed: (){
            Navigator.pushNamed(context, 'VideoScreen');
          },
          child: Text('More About Us'),
        ),
      )
      ,
    );
  }
}
