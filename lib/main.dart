
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/change.dart';
import 'homescreen.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: ChangeNotifierProvider(create: (BuildContext context)=>Timerinfo(),
        child: HomeScreen(),

      ),
    ));
  }
}
