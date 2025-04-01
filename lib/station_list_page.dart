import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  List<String> station = [
    '수서',
    '동탄',
    '평택지제',
    '천안아산',
    '오송',
    '대전',
    '김천구미',
    '동대구',
    '경주',
    '울산',
  ];
  String title;
  StationListPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(title)],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: station.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(station[index]),
                      onTap: () {
                        Navigator.pop(context, station[index]);
                      },
                    ),
                    Divider(color: Theme.of(context).colorScheme.outline,
                    thickness:  1,)
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
