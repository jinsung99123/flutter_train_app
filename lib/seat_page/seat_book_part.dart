import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatBookPart extends StatelessWidget {
  final int? selectedRow;
  final String? selectedCol;                                          // 선택된 좌석의 행과 열 저장 변수

  const SeatBookPart({                                                // 생성자
    Key? key,
    required this.selectedRow,
    required this.selectedCol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(                                        // 좌석 예매 버튼 생성성
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purpleAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed:                                                  // 삼항 연산자를 통해 좌석이 선택되었을 때만 버튼 활성화
              (selectedRow != null && selectedCol != null)
                  ? () {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('예매 하시겠습니까?'),
                          content: Text('좌석:$selectedRow-$selectedCol'),
                          actions: [                                  // 쿠퍼티노 팝업 액션 구현
                            CupertinoDialogAction(
                              isDestructiveAction: true,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('취소'),
                            ),
                            CupertinoDialogAction(
                              isDefaultAction: true,
                              onPressed: () {},
                              child: Text('확인'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                  : null,
          child: Text('예매 하기'),
        ),
      ),
    );
  }
}
