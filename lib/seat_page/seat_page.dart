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
      appBar: AppBar(
        centerTitle: true,
        title: Text('좌석 선택'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.start,style: TextStyle(fontSize: 30,color: Colors.purpleAccent)),
                SizedBox(width: 60,),
                Icon(Icons.arrow_circle_right,size: 30,),
                SizedBox(width: 60,),
                Text(widget.end,style: TextStyle(fontSize: 30,color: Colors.purpleAccent),)
              ],
            ),
          ),
          SizedBox(height: 20,),
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
                    Text(' 선택됨')
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

                    
                    Text(' 미선택')
                  ],
                ),
              )
              
              
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Center(child: Text('A',style: TextStyle(
                  fontSize: 20
                ),))),
                Expanded(child: Center(child: Text('B',style: TextStyle(
                  fontSize: 20
                )))),
                SizedBox(width: 50,),
                Expanded(child: Center(child: Text('C',style: TextStyle(
                  fontSize: 20
                )))),
                Expanded(child: Center(child: Text('D',style: TextStyle(
                  fontSize: 20
                )))),
            
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
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
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),            
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                onPressed: () {
                showCupertinoDialog(context: context, builder: (context){
                  return CupertinoAlertDialog(
                    title: Text('예매 하시겠습니까?'),
                    content: Text('좌석:$selectRow-$selectCol'),
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
              }, child: Text('예매 하기')),
              
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }

  Widget seatrow(int rowNum) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
            children: [
              seat(rowNum,'A'),
              seat(rowNum,'B'),
              Expanded(child: Center(child: Text('$rowNum'))),
              seat(rowNum,'C'),
              seat(rowNum,'D'),
            ],
          ),
    );
  }


Widget seat(int rowNum, String colNum) {  
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