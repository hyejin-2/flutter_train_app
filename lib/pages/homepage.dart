import 'package:flutter/material.dart';
import 'seatpage.dart';
import 'stationlistpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? departure;
  String? destination;

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
    return Scaffold(
      appBar: AppBar(title: const Text('기차 예매')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
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
              child: ElevatedButton(
                onPressed: (departure != null && destination != null)
                    ? goToSeatPage
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  '좌석 선택',
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

  Widget stationBox(String label, String? value, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Text(value ?? '선택', style: const TextStyle(fontSize: 40)),
          ],
        ),
      ),
    );
  }
}
