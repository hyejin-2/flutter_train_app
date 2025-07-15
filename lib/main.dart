import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //우측 상단 Debug 배너 제거
      themeMode: ThemeMode.system, // test 완료 후 시스템 모드 자동 적용
      // themeMode: ThemeMode.light, //test하면서 검토 진행

      //라이트 모드
      theme: ThemeData(
        useMaterial3: true, //material 디자인3 사용
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.light,
        ),
      ),

      //다크 모드
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
      ),

      home: const HomePage(),
    );
  }
}
