import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
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
              Text('수서'),
              Icon(Icons.arrow_right_alt_rounded),
              Text('부산')
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
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),
              seat(),]),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('예매 하기'))
        ],
      ),
    );
  }
}

Widget seat() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: Colors.grey,
          borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(width: 5),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: Colors.grey,
          borderRadius: BorderRadius.circular(10)),
        ),
        Container(        
          width: 50,
          height: 50,
          child: Center(child: Text('1')),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: Colors.grey,
          borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(width: 5),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: Colors.grey,
          borderRadius: BorderRadius.circular(10)),
        ),
      ],
    ),
  );
}