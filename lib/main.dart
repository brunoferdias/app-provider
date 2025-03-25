import 'package:apagar/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/counter_model.dart';
import 'screens/counter_view.dart';


void main() {
  runApp(ChangeNotifierProvider(create: (context)=> CounterModel(),
  child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Welcome(),
    );
  }
}


