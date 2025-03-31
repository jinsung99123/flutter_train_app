import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('출발역')
          ],
        )
      ),
    );
  }
}