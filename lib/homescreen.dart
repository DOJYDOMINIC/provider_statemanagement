import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'change.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds:1), (timer) {

      var timerinfo = Provider.of<Timerinfo>(context,listen: false);
      timerinfo.updateRemaintime();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Timerinfo>(builder: (context, data, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(data.getRemainingTime().toString(),style: TextStyle(fontSize: 72))),
            ElevatedButton(onPressed: (){
              Provider.of<Timerinfo>(context,listen: false).updateRemaintime();
            },
                child: Text('click'))
          ],
        );
      },
      ),
    );
  }
}

