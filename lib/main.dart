import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './TRTCVoiceRoomDemo/ui/list/VoiceRoomList.dart';
import './TRTCVoiceRoomDemo/ui/list/VoiceRoomCreate.dart';
import './TRTCVoiceRoomDemo/ui/room/VoiceRoomAnchor.dart';
import './TRTCVoiceRoomDemo/ui/room/VoiceRoomAudience.dart';
import './index.dart';
import './login/LoginPage.dart';
import './TRTCVoiceRoomDemo/ui/base/UserEnum.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/forTest",
      routes: {
        //按R，测试替换
        "/forTest": (context) => VoiceRoomAnchorPage(UserType.Administrator),
        "/": (context) => IndexPage(), //VoiceRoomListPage()
        "/index": (context) => IndexPage(), //VoiceRoomListPage()
        "/login": (context) => LoginPage(),
        "/voiceRoom/list": (context) => VoiceRoomListPage(),
        "/voiceRoom/roomCreate": (context) => VoiceRoomCreatePage(),
        "/voiceRoom/roomAnchor": (context) =>
            VoiceRoomAnchorPage(UserType.Anchor),
        //"/voiceRoom/roomAudience": (context) => VoiceRoomAudiencePage(),
        "/voiceRoom/roomAudience": (context) =>
            VoiceRoomAnchorPage(UserType.Audience),
      },
    );
  }
}
