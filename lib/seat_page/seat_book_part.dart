import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatBookPart extends StatelessWidget {
  final int? selectedRow;
  final String? selectedCol;

  const SeatBookPart({
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
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purpleAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed:
              (selectedRow != null && selectedCol != null)
                  ? () {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('예매 하시겠습니까?'),
                          content: Text('좌석:$selectedRow-$selectedCol'),
                          actions: [
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
