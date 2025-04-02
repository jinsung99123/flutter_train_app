import 'package:flutter/material.dart';

class SeatSelectPart extends StatefulWidget {
  final Function(int, String) onSeatSelected;                           // 좌석 선택시 호출될 콜백 함수
  final int? selectedRow;
  final String? selectedCol;                                            // 선택된 좌석의 행/열 번호

  const SeatSelectPart({                                                // 생성자
    Key? key,
    required this.onSeatSelected,
    required this.selectedRow,
    required this.selectedCol,
  }) : super(key: key);

  @override
  State<SeatSelectPart> createState() => _SeatSelectPartState();
}

class _SeatSelectPartState extends State<SeatSelectPart> {
  Widget seatrow(int rowNum) {                                          // 한 행 세트의 좌석을 생성하는 위젯
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          seat(rowNum, 'A'),
          seat(rowNum, 'B'),
          Expanded(child: Center(child: Text('$rowNum'))),
          seat(rowNum, 'C'),
          seat(rowNum, 'D'),
        ],
      ),
    );
  }

  Widget seat(int rowNum, String colNum) {                              // 해당 행의 개별 좌석을 생성하는 위젯
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: GestureDetector(
          onTap: () {
            widget.onSeatSelected(rowNum, colNum);
          },
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color:
                    rowNum == widget.selectedRow && colNum == widget.selectedCol       // 삼항 연산자를 통해 행,열이 선택되었을시 버튼 색깔 활성화
                        ? Colors.purpleAccent
                        : Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {                                  // 좌석 모듬을 생성하는 위젯
    return Expanded(
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
            ],
          ),
        ),
      ),
    );
  }
}
