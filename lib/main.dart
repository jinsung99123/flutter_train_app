import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Row(
              children: [
                Column(
                  children: [
                    Text('출발역'),
                    Text('수서')                                         
                  ],                  
                ),
                Column(
                  children: [
                    Text('도착역'),
                    Text('부산')                                         
                  ],),
              ],
            )
          ),  
          ElevatedButton(onPressed: (){}, child: Text('좌석 선택'))     
        ]
      )
    );
  }
}