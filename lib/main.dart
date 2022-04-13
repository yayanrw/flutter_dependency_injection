import 'package:dependency_injection/configs/env.dart';
import 'package:dependency_injection/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';
import 'providers/data_provider.dart';

void main() {
  configureInjection(Env.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<DataProvider>(
      create: (context) => getIt<DataProvider>(),
      child: const MaterialApp(
        title: "Belajar Dependency Injection",
        home: HomePage(),
      ),
    );
  }
}
