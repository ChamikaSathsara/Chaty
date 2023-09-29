import 'package:chaty/firebase_options.dart';
import 'package:chaty/screens/auth/authservice.dart';

import 'package:chaty/screens/login_page1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ChangeNotifierProvider(
    create: (context) => AuthService(),
    child: const chatyApp(),
  ));
}

// ignore: camel_case_types
class chatyApp extends StatelessWidget {
  const chatyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'chatyApp',
      home: LoginPage(),
    );
  }
}
