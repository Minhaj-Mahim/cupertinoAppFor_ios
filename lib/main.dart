import 'package:flutter/cupertino.dart';

void main(){
  runApp(const MyCupertinoApp());
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text('Home'),
        trailing: CupertinoSwitch(
          onChanged: (bool onChange){

          }, value: true,
        ),
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello World!'),
              Text('Hello World!'),
              Text('Hello World!'),
              Text('Hello World!'),
              Text('Hello World!'),
              CupertinoButton.filled(child: Text('Button'), onPressed: (){}),
              CupertinoTextField(),
              CupertinoTabBar(items: [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.number_square_fill),label: 'hash'),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.camera_fill),label: 'picture'),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.lightbulb_fill),label: 'idea'),
              ]),
            ],
          ),
        ),
    );
  }
}
