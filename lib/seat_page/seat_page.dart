import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat_page/seat_book_part.dart';
import 'package:flutter_train_app/seat_page/seat_select_part.dart';
import 'package:flutter_train_app/seat_page/seat_top_part.dart';

class SeatPage extends StatefulWidget {
  final String start;                                                             // 출발역 도착역 받을 변수
  final String end;

  SeatPage({required this.start, required this.end});                             // 생성자

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  int? selectRow;                                                                 // 선택된 좌석의 행
  String? selectCol;                                                              // 선택된 좌석의 열

  void onSelected(int row, String col) {                                          // 좌석 선택시 호출 함수
    setState(() {
      selectRow = row;                                                            // 선택 행/열 업데이트트
      selectCol = col;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('좌석 선택')),
      body: Column(
        children: [
          SeatTopPart(start: widget.start, end: widget.end),
          SizedBox(height: 10),

          SeatSelectPart(                                                         // 세부 좌석 위젯 구현
            onSeatSelected: onSelected,
            selectedRow: selectRow,
            selectedCol: selectCol,                                               // SeatSelectPart에 데이터 전달
          ),

          SeatBookPart(selectedRow: selectRow, selectedCol: selectCol),           // 하단 예매 버튼 위젯 구현
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
