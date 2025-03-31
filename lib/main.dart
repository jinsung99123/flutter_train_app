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
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('기차 예매')
          ],
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [          
              Container(
                width:double.infinity,
                height:180,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,      
                        
                                       
                        children: [                    
                          Column(                          
                            children: [
                              Text('출발역'),
                              Text('수서',style: TextStyle(fontSize: 30))                                         
                            ],                  
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            child: VerticalDivider(color: Colors.red,thickness: 2),
                          ),
                          
                          Column(
                            children: [
                              Text('도착역'),
                              Text('부산',style: TextStyle(fontSize: 30),)                                         
                            ],),
                        ],
                      ),
                    ],
                  )
                ),
              
            ),  
            SizedBox(height: 10),
            SizedBox(
              width:double.infinity,              
              child: ElevatedButton(onPressed: (){}, child: Text('좌석 선택',style: TextStyle(
                fontSize:15
              ),)))                  
          ]
        ),
      )
    );
  }
}
