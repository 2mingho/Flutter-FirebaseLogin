import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDfnGJM8IEyqoSHDdWhtMjX_LgbyVBCkOE",
            appId: "1:54381411120:web:85507201e48aac87a2a6f5",
            messagingSenderId: "54381411120",
            projectId: "flutter-firebase-6eff1"));
  }
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('This is my flutter Firebase App'),
        ),
      ),
    );
  }
}
