import 'package:flutter/material.dart';
import 'package:myapp/config/theme_1.dart';
import 'package:myapp/config/util.dart';
import 'package:myapp/pages/sign_in/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = createTextTheme(context, 'Abhaya Libre', 'Allerta');

    final MaterialTheme materialTheme = MaterialTheme(textTheme);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: materialTheme.light(),
      darkTheme: materialTheme.dark(),
      themeMode: ThemeMode.system,
      home: SignInPage(),
    );
  }
}
