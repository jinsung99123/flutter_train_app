import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  List<String> station = ['수서','동탄','평택지제','천안아산','오송','대전','김천구미','동대구','경주','울산'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('출발역')],
        ),
      ),
      body: ListView.builder(itemCount: station.length ,itemBuilder: (context,index){
        return ListTile(
          title: Text(station[index]),
          onTap: (){
            Navigator.pop(context,station[index]);
          },
        );
      }
      )
              
      
    );
  }
}
