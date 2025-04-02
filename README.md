# flutter_train_app

기차 예매를 할 수 있게 구현한 기초 틀의 기차 예매 앱입니다.
첫 번째 화면으로 정류장 선택 틀과 예매하기 버튼을 생성하고,
정류장 선택 틀 사용시 세부 정류장 리스트 화면으로 이동, 예매하기 버튼 사용시 좌석 세부 선택 화면으로 이동합니다.

## 스크린샷
홈 화면: (./screenshots/home_screen.png)
정류장 리스트 화면: (./screenshots/station_list.png)
세부 좌석 화면 (./screenshots/seat_page.png)

### 사용법
1. 홈화면 진입시 출발역과 도착역을 클릭하여 정류장 리스트 페이지로 이동 후 정류장을 선택합니다.
2. 출발역과 도착역 모두 설정하지 않을 시 예매 버튼을 사용할 수 없습니다.
3. 정류장 선택 후 예매버튼을 누르면 세부 좌석 선택 페이지로 이동합니다.
4. 세부 좌석 화면 상단에 선택 출발/도착 정류장이 표시됩니다.
5. 세부 좌석 시트를 클릭하여 예매 버튼을 클릭 시 해당 좌석으로 예매를 진행할 것인지 팝업이 실행됩니다.
6. 좌석을 선택하지 않을 시 예매 버튼을 사용할 수 없습니다.

#### 데이터 전달
1. main.dart => station_list_page.dart (출발역/도착역 중 무엇을 선택했는지 전달)
2. station_list_page.dart => main.dart (정류장 리스트 중 선택한 정류장 전달)
3. main.dart => seat_top_part.dart (선택한 출발역/도착역 전달)
4. seat_select_part.dart => seat_book_part.dart (선택한 좌석의 정보를 팝업에 전달)

##### 개선사항
1. 버튼 사용 시 출발역과 도착역 좌석 선택을 하지 않을 시 버튼 비활성화
- 방법: onPressed () {} 함수에 삼항 연산자를 사용하여 조건 추가 후 특정 조건에만 활성화되게 조정
2. 리스트를 쉽게 생성하여 다른 페이지와 연동
- 방법: ListView.builder 를 사용. 그를 통해 list를 형성하고 navigator(pop)을 통해 이전 페이지로 선택한 정류장 정보를 전달
3. 메인 화면에서 선택한 정보를 정류장 리스트 페이지에 전달
- 방법: 출발역, 도착역 클릭시 각기 다른 변수로 Gesturedetector.navigator를 선정하고 title이라는 출발역 or 도착역 값을 정류장 페이지에 전달. 전달 받은 정류장 페이지는 생성자 선언 후에 해당 title을 AppBar에 적용
4. 좌석 클릭 시 색깔 변동
- 방법: 삼항 연산자를 통해 선택시 조건(행과 열이 입력이 되었는지)을 추가해 색깔 부여여
5. 팝업 설정 방법
- 방법: showCupertinoDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(actions[])}) 사용
6. 팝업 출현 조건 부여
- 방법: showCupertinoDialog를 감싸는 onPressed() {} 함수에 삼항 연산자 적용
