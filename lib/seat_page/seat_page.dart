import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat_page/seat_book_part.dart';
import 'package:flutter_train_app/seat_page/seat_select_part.dart';
import 'package:flutter_train_app/seat_page/seat_top_part.dart';

class SeatPage extends StatefulWidget {
  final String start;
  final String end;

  SeatPage({required this.start, required this.end});

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  int? selectRow;
  String? selectCol;

  void onSelected(int row, String col) {
    setState(() {
      selectRow = row;
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

          SeatSelectPart(
            onSeatSelected: onSelected,
            selectedRow: selectRow,
            selectedCol: selectCol,
          ),

          SeatBookPart(selectedRow: selectRow, selectedCol: selectCol),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
