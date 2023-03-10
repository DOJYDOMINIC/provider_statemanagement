
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/change.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Counter())
  ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${context.watch<Counter>().count}"),
              FloatingActionButton(onPressed: (){
                context.read<Counter>().incriment();
              },child: Icon(Icons.add),),
              FloatingActionButton(onPressed: (){
                context.read<Counter>().reset();
              },child:Text('0')),
              FloatingActionButton(onPressed: (){
                context.read<Counter>().decriment();
              },child: Icon(Icons.minimize),)
            ],
          ),
        ),
      ),
    );
  }
}
