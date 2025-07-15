import 'package:flutter/material.dart';

//역 선택 화면 -> 출발역/도착역 선택만 하고 상태를 저장하지 않기 때문에 Stateless 사용
class StationListPage extends StatelessWidget {
  final bool isDeparture; //출발역인지 도착역인지 구분
  final String? oppositeStation; // 반대역 (같은 역은 출발/도착 둘 다 선택 못하게 필터링)

  //생성자
  StationListPage({super.key, required this.isDeparture, this.oppositeStation});

  //역 리스트
  final List<String> stations = const [
    "수서",
    "동탄",
    "평택지제",
    "천안아산",
    "오송",
    "대전",
    "김천구미",
    "동대구",
    "경주",
    "울산",
    "부산",
  ];

  @override
  Widget build(BuildContext context) {
    //oppositeStation이 있으면 해당 역은 선택지에서 제외
    final filteredStations = stations
        .where((s) => s != oppositeStation) //oppositeStation은 제외
        .toList();

    return Scaffold(
      //배경 다크/라이트 모드 적용
      backgroundColor: Theme.of(context).colorScheme.background,
      //상단 AppBar: 출발역/도착역 제목 출력
      appBar: AppBar(title: Text(isDeparture ? '출발역' : '도착역')),
      //역 리스트 뷰: 스크롤 가능
      body: ListView.builder(
        itemCount: filteredStations.length, //역 개수만큼 반복
        itemBuilder: (context, index) {
          return Container(
            height: 50, // 각 역의 높이 고정
            decoration: BoxDecoration(
              border: Border(
                // 각 역 하단에 회색 선: 구분선 역할
                bottom: BorderSide(color: Colors.grey[300]!, width: 1),
              ),
            ),
            child: ListTile(
              title: Text(
                filteredStations[index],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //선택하면 Navigator.pop 으로 선택된 역 반환
              onTap: () => Navigator.pop(context, filteredStations[index]),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              dense: true,
            ),
          );
        },
      ),
    );
  }
}
