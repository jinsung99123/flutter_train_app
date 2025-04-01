import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatPage extends StatefulWidget {
  String start;
  String end;

  SeatPage({required this.start,required this.end});

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  int? selectRow;
  int? selectCol;

  void onSelected(int row, int col) {
    setState(() {
    selectRow = row;
    selectCol = col;
    });
  }
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('좌석 선택')
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.start),
              Icon(Icons.arrow_right_alt_rounded),
              Text(widget.end)
            ],
          ),
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
                        borderRadius: BorderRadius.circular(10))),
                    Text('선택됨')
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
                        borderRadius: BorderRadius.circular(10))),

                    
                    Text('선택 안 됨')
                  ],
                ),
              )
              
              
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
              seatrow(1),
              SizedBox(height: 10),
              seatrow(2),
              SizedBox(height: 10),
              seatrow(3),
              SizedBox(height: 10),
              seatrow(4),
              SizedBox(height: 10),
              seatrow(5),
              SizedBox(height: 10),
              seatrow(6),
              SizedBox(height: 10),
              seatrow(7),
              SizedBox(height: 10),
              seatrow(8),
              SizedBox(height: 10),
              seatrow(9),
              SizedBox(height: 10),
              seatrow(10),
              SizedBox(height: 10),
              seatrow(11),
              SizedBox(height: 10),
              seatrow(12),
              SizedBox(height: 10),
              seatrow(13),
              SizedBox(height: 10),
              seatrow(14),
              SizedBox(height: 10),
              seatrow(15),
              SizedBox(height: 10),
              seatrow(16),
              SizedBox(height: 10),
              seatrow(17),
              SizedBox(height: 10),
              seatrow(18),
              SizedBox(height: 10),
              seatrow(19),
              SizedBox(height: 10),
              seatrow(20),
              ]),
            ),
          ),
          
          ElevatedButton(onPressed: () {
            showCupertinoDialog(context: context, builder: (context){
              return CupertinoAlertDialog(
                title: Text('예매 하시겠습니까?'),
                content: Text('좌석: '),
                actions: [
                  CupertinoDialogAction(
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('취소')),
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () {},
                    child: Text('확인'))
                ],
              );
            });
          }, child: Text('예매 하기'))
        ],
      ),
    );
  }

  Widget seatrow(int rowNum) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
            children: [
              seat(rowNum,1),
              seat(rowNum,2),
              Expanded(child: Center(child: Text('$rowNum'))),
              seat(rowNum,3),
              seat(rowNum,4),
            ],
          ),
    );
  }


Widget seat(int rowNum, int colNum) {  
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: GestureDetector(
        onTap: () {
          onSelected(rowNum, colNum);
        },
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            
            decoration: BoxDecoration(color: rowNum == selectRow && colNum == selectCol? Colors.purpleAccent : Colors.grey,
            borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    ),
  );
}
}