import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  final bool isDeparture;
  final String? oppositeStation; // 추가

  StationListPage({
    super.key,
    required this.isDeparture,
    this.oppositeStation, // 추가
  });

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
    final filteredStations = stations
        .where((s) => s != oppositeStation)
        .toList();

    return Scaffold(
      //배경 다크/라이트
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text(isDeparture ? '출발역' : '도착역')),
      body: ListView.builder(
        itemCount: filteredStations.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border(
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
