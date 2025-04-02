import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat_page/seat_book_part.dart';
import 'package:flutter_train_app/seat_page/seat_select_part.dart';

class SeatPage extends StatefulWidget {
  String start;
  String end;

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.start,
                  style: TextStyle(fontSize: 30, color: Colors.purpleAccent),
                ),
                SizedBox(width: 30),
                Icon(Icons.arrow_circle_right, size: 30),
                SizedBox(width: 30),
                Text(
                  widget.end,
                  style: TextStyle(fontSize: 30, color: Colors.purpleAccent),
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
                  child: Center(
                    child: Text('A', style: TextStyle(fontSize: 20)),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text('B', style: TextStyle(fontSize: 20)),
                  ),
                ),
                SizedBox(width: 50),
                Expanded(
                  child: Center(
                    child: Text('C', style: TextStyle(fontSize: 20)),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text('D', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
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
