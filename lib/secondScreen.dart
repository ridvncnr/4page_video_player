import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),

      ),
        body: Center(
          child: ElevatedButton (
            onPressed: (){
              Navigator.pushNamed(context, 'ThirdScreen');
            },
            child: Text('Third Screen'),
          ),
        )
    );

  }
}
