import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3 buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3 Buttons'),
        centerTitle: true,
      ),
      body: ThreeButtons(),

    );
  }
}

class ThreeButtons extends StatelessWidget {
  const ThreeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('1번 버튼'),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('1번 버튼을 클릭했습니다.'),
                duration: Duration(milliseconds: 10),
              ));
            },
          ),
          ElevatedButton(
            child: Text('2번 버튼'),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('2번 버튼을 클릭했습니다.',),
                duration: Duration(milliseconds: 10),
              ));
            },
          ),
          ElevatedButton(
            child: Text('3번 버튼'),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('3번 버튼을 클릭했습니다.'),
                duration: Duration(milliseconds: 10),
              ));
            },
          ),
        ],
      ),
    );
  }
}


