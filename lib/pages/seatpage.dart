import 'package:flutter/material.dart';
import '../components/seat_widgets.dart';

class SeatPage extends StatefulWidget {
  final String departure;
  final String destination;
  const SeatPage({
    super.key,
    required this.departure,
    required this.destination,
  });

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  final Set<String> selectedSeats = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('좌석 선택')),
      backgroundColor: Color.fromARGB(255, 253, 249, 253),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // 경로 표시
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 출발역
                Expanded(
                  child: Text(
                    widget.departure,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.arrow_circle_right_outlined, size: 30),
                const SizedBox(width: 10),
                // 도착역
                Expanded(
                  child: Text(
                    widget.destination,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 상태 표시
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SeatStateIndicator(color: Colors.purple, label: '선택됨'),
                SizedBox(width: 20),
                SeatStateIndicator(
                  color: Color.fromARGB(255, 200, 200, 200),
                  label: '선택 안 됨',
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 열 레이블
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ['A', 'B', '', 'C', 'D'].map((label) {
                return Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(label, style: const TextStyle(fontSize: 18)),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),

            // 좌석 목록
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, row) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var col in ['A', 'B'])
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: SeatBox(
                              id: '$row$col',
                              isSelected: selectedSeats.contains('$row$col'),
                              onTap: () => toggleSeat('$row$col'),
                            ),
                          ),
                        Container(
                          width: 50,
                          alignment: Alignment.center,
                          child: Text(
                            '${row + 1}',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                        for (var col in ['C', 'D'])
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: SeatBox(
                              id: '$row$col',
                              isSelected: selectedSeats.contains('$row$col'),
                              onTap: () => toggleSeat('$row$col'),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // 예매 버튼
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: selectedSeats.isEmpty
                    ? null
                    : showConfirmationDialog,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  '예매 하기',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void toggleSeat(String id) {
    setState(() {
      if (selectedSeats.contains(id)) {
        selectedSeats.remove(id);
      } else {
        selectedSeats.add(id);
      }
    });
  }

  String getFormattedSeats() {
    return selectedSeats
        .map((id) {
          final row = int.parse(id.substring(0, id.length - 1));
          final col = id.substring(id.length - 1);
          return '${row + 1}-$col';
        })
        .join(', ');
  }

  void showConfirmationDialog() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment(
            0,
            -0.03,
          ), // Alignment(x, y) 로 좌우(X): -1(왼쪽 끝) ~ 0(가운데) ~ +1(오른쪽 끝)·상하(Y): -1(위쪽 끝) ~ 0(가운데) ~ +1(아래쪽 끝) 위치를 정함
          child: Material(
            color: Colors.transparent,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.65, //화면의 65% 폭
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20), // 제목 위 여백
                  const Text(
                    '예매 하시겠습니까?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  Text('좌석 : ${getFormattedSeats()}'),
                  const SizedBox(height: 15), //좌석 아래 간격
                  const Divider(height: 1), //상단 가로줄
                  SizedBox(
                    height: 45,

                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              '취소',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ),

                        //세로줄
                        Container(
                          width: 1,
                          height: double.infinity,
                          color: Colors.grey,
                        ),

                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: const Text(
                              '확인',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
