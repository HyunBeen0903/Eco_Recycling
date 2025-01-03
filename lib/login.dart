import 'package:flutter/material.dart';
import 'main/navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        "/main": (context) => const NavigatorPage(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '수거해드림', // 뒤에 콤마를 붙이면 1 line에 1 속성으로 자동 정렬됨.
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true, // android(좌) ios(중) 정렬이 달라서 명시해서 둘다 가운데 정렬로 처리
      ),
      body: SingleChildScrollView(
        // SingleChildScrollView : 스크롤 자동으로 방지처리되게 해주는 녀석
        child: Padding(
          padding: const EdgeInsets.all(16), // padding 값으로 여백 추가
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(32), // 이미지에 대한 전체 패딩값 적용
              child: Image.network(
                "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                width: 81,
              ),
            ),
            TextField(
              decoration: InputDecoration(labelText: '이메일'),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: '비밀번호'),
            ),
            Container(
              width: double.infinity, // 사이즈는 고정값을 넣는것은 좋지않다(기기마다 사이즈가 다르므로)
              margin: const EdgeInsets.only(top: 16), // 위쪽에만 간격을 준다.
              child: ElevatedButton( //로그인 버튼 클릭시 main화면으로 이동
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/main");
                },
                child: Text('로그인'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
