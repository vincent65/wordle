import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'WORDLE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: const WordleScreen(),
    )
  }
}
