import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('출발역')],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),
              ListTile(title: Text('수서')),
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),    
              ListTile(title: Text('동탄')),
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),
              ListTile(title: Text('평택지제')),
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),
              ListTile(title: Text('천안아산')),
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),
              ListTile(title: Text('오송')),
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),
              ListTile(title: Text('대전')),
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),
              ListTile(title: Text('김천구미')),
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),
              ListTile(title: Text('동대구')),
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),
              ListTile(title: Text('경주')),
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),
              ListTile(title: Text('울산')),
              SizedBox(
                width: double.infinity,
                child:Divider(color: Colors.red,thickness: 2,)),
            ],
          ),
        ],
      ),
    );
  }
}
