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
      themeMode: ThemeMode
          .light, //  themeMode: ThemeMode.system, 시스템 설정에 따라 다크/라이트 자동 전환 < 마지막에 수정할 것
      debugShowCheckedModeBanner: false,

      //라이트
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.light, // 여기서 지정
        ),
      ),

      //다크
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark, // 여기서 지정
        ),
      ),

      home: const HomePage(),
    );
  }
}
