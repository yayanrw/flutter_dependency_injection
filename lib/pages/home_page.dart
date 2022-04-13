import 'package:dependency_injection/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final dataProvider = context.watch<DataProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Dependency Injection"),
      ),
      body: Center(
        child: Text(
          dataProvider.dataText,
          style: textTheme.headline4,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
