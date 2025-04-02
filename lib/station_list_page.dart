import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  List<String> station = [                                        //정류장 리스트 생성                                    
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
  StationListPage({required this.title});                        //생성자

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(title)),    // Appbar에 title을 전달받아 출발역 or 도착역 구분하여 출력
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(                            // 리스트뷰 빌더: 리스트의 각 항목을 동적 생성
              itemCount: station.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(station[index]),
                      onTap: () {                               // 선택역을 이전 화면으로 전달 후 화면 닫기
                        Navigator.pop(context, station[index]);
                      },
                    ),
                    Divider(
                      color: Theme.of(context).colorScheme.outline,
                      thickness: 1,
                    ),
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
