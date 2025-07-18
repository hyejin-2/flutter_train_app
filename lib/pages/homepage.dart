import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'seatpage.dart';
import 'stationlistpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//실제 상태 관리 클래스
class _HomePageState extends State<HomePage> {
  String? departure; //출발역 이름
  String? destination; //도착역 이름

  //역 선택 화면으로 이동 후 결과 처리
  void selectStation(bool isDeparture) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StationListPage(
          isDeparture: isDeparture,
          oppositeStation: isDeparture ? destination : departure,
        ),
      ),
    );

    //선택된 역이 있으면 상태 갱신
    if (result != null) {
      setState(() {
        if (isDeparture) {
          departure = result;
        } else {
          destination = result;
        }
      });
    }
  }

  //좌석 선택 페이지로 이동
  void goToSeatPage() {
    if (departure != null && destination != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              SeatPage(departure: departure!, destination: destination!),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme; //테마 색 가져오기

    return Scaffold(
      //배경색: 모드에 따라 변경 (라이트모드 지정, 다크 모드 기본)
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? Colors.grey[200]
          : Theme.of(context).colorScheme.background,

      appBar: AppBar(
        title: const Text('기차 예매'),
        backgroundColor: colorScheme.surface,
        elevation: 0,
        foregroundColor: colorScheme.onSurface,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //body 내 위젯 세로 중앙 정렬
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                //라이트/다크 모드에 따라 다른 색상 + 투명도
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.white
                    : Colors.grey[800]!,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: stationBox(
                      '출발역',
                      departure,
                      () => selectStation(true),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(width: 2, height: 50, color: Colors.grey[400]),
                  const SizedBox(width: 20),
                  Expanded(
                    child: stationBox(
                      '도착역',
                      destination,
                      () => selectStation(false),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                // Material 3 기본 버튼: FilledButton!
                onPressed: (departure != null && destination != null)
                    ? goToSeatPage
                    : null,
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  '좌석 선택',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.white
                        : Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //출발역, 도착역 선택 박스
  Widget stationBox(String label, String? value, VoidCallback onTap) {
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.grey
                    : colorScheme.onSurfaceVariant,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              value ?? '선택',
              style: TextStyle(fontSize: 40, color: colorScheme.onSurface),
            ),
          ],
        ),
      ),
    );
  }
}
