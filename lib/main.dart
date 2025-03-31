import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat_page/seat_page.dart';
import 'package:flutter_train_app/station_list_page.dart';

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

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String startStation = '선택';
  String endStation='선택';


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
                          GestureDetector(
                            onTap: () async {
                              String selectStation = await Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>StationListPage(title:'출발역')));

                              if (selectStation !=null) {setState((){
                                startStation=selectStation;
                              });}
                            },
                                         
                          child: Column(                          
                            children: [
                              Text('출발역'),
                              Text(startStation,style: TextStyle(fontSize: 30))                                         
                            ],                  
                          ),
                          ),

                          Container(
                            height: 50,
                            width: 150,
                            child: VerticalDivider(color: Colors.red,thickness: 2),
                          ),
                          
                          GestureDetector(
                            onTap: () async {
                              String selectEndStation = await Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>StationListPage(title:'도착역')));

                              if (selectEndStation!=null) {setState(() {
                                endStation=selectEndStation;
                              });}

                            },
                            child: Column(
                              children: [
                                Text('도착역'),
                                Text(endStation,style: TextStyle(fontSize: 30),)                                         
                              ],),
                          ),
                        ],
                      ),
                    ],
                  )
                ),
              
            ),  
            SizedBox(height: 10),
            SizedBox(
              width:double.infinity,              
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SeatPage(start:startStation, end: endStation)));
              }, child: Text('좌석 선택',style: TextStyle(
                fontSize:15
              ),)))                  
          ]
        ),
      )
    );
  }
}
