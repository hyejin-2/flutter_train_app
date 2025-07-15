import 'package:flutter/material.dart';

//좌석 하나를 그려주는 Stateless 위젯
class SeatBox extends StatelessWidget {
  final String id; //좌석 식별 ID
  final bool isSelected; //현재 좌석이 선택되었는지 여부
  final VoidCallback onTap; //좌석을 클릭했을 때 실행할 함수

  const SeatBox({
    super.key,
    required this.id,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //GestureDetector: 클릭 이벤트 감지용
      onTap: onTap, //눌렀을 때 실행할 함수 연결
      child: Container(
        width: 50, //좌석 너비
        height: 50, //좌석 높이
        decoration: BoxDecoration(
          //선택 상태에 따라 색상 달라짐
          color: isSelected
              ? Colors
                    .purple //선택됨: 보라색
              : Theme.of(context).brightness == Brightness.light
              ? Colors.grey[300]! //라이트모드에서 선택 안되었을 때 색상
              : Colors.grey[600]!, //다크모드에서 선택 안되었을 때 색상
          borderRadius: BorderRadius.circular(8), //모서리 둥글게
        ),
      ),
    );
  }
}

//선택 상태를 표시하는 인디케이터 (네모+텍스트)
class SeatStateIndicator extends StatelessWidget {
  final Color color; //네모 박스 색상
  final String label; //옆에 출력할 텍스트 (ex. '선택됨')

  const SeatStateIndicator({
    super.key,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //상태 네모 박스
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(width: 4), //네모와 텍스트 사이 간격
        Text(label), // 상태 텍스트 출력
      ],
    );
  }
}
