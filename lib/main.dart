import 'package:converse/common/theme/dark_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common/theme/light_theme.dart';
import 'feature/welcome/pages/welcome_page.dart';
import 'firebase_options.dart';
//import 'package:whatsapp_messenger/feature/welcome/pages/welcome_page.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print("Firebase initialization error !!!!: $e");
  }
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Converse',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: const WelcomePage(),
    );
  }
}