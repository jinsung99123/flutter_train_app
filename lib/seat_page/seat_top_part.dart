import 'package:flutter/material.dart';

class SeatTopPart extends StatelessWidget {
  final String start;                                       // 출발역 도착역을 받을 변수
  final String end;

  const SeatTopPart({                                       // 생성자
    required this.start,
    required this.end,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                start,
                style: TextStyle(fontSize: 30, color: Colors.purpleAccent),          // 전달 받은 start(출발역)를 표시
              ),
              SizedBox(width: 30),
              Icon(Icons.arrow_circle_right, size: 30),
              SizedBox(width: 30),
              Text(
                end,
                style: TextStyle(fontSize: 30, color: Colors.purpleAccent),          // 전달 받은 end(도착역)을 표시
              ),
            ],
          ),
        ),

        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Text(' 선택됨'),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  Text(' 미선택'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(child: Text('A', style: TextStyle(fontSize: 20))),
              ),
              Expanded(
                child: Center(child: Text('B', style: TextStyle(fontSize: 20))),
              ),
              SizedBox(width: 50),
              Expanded(
                child: Center(child: Text('C', style: TextStyle(fontSize: 20))),
              ),
              Expanded(
                child: Center(child: Text('D', style: TextStyle(fontSize: 20))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
