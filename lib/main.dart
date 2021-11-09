import 'package:flutter/material.dart';
import 'package:send_backk/secondScreen.dart';
import 'package:send_backk/thirdScreen.dart';
import 'VideoScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
        routes: {
        '/': (context)=>const HomeScreen(),
          'SecondScreen': (context)=> const SecondScreen(),
          'ThirdScreen': (context)=> const ThirdScreen(),
          'VideoScreen': (context)=> const VideoPlayerApp(),


        },
        debugShowCheckedModeBanner: false,

    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text('Kendini Medite Et'),
      ),
      // Create the SelectionButton widget in the next step.
      body: Center(
        child: Column(

          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'SecondScreen');
            },
                child: Text('Second Screen')),
            SelectionButton(),
          ],
        ),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  const SelectionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: const Text('Modunu Seç'),
    );
  }

  void _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(builder: (context) => const SelectionScreen()),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
}
class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modunu Seç'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(

                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(27.0),
                    child: Image.asset('images/abc.gif')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  label: Text('Muhteşem'),
                  onPressed: () {Navigator.pop(context,'Harikaaaaaa!!!!');},
                  icon: Icon(Icons.check),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context,'BU GÜNLER DE GEÇER:dd');
                  },
                  child: const Text('Günümde Değilim :('),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
