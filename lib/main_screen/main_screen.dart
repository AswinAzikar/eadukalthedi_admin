import 'package:eadukalthedi_admin/utils/log_utils.dart';
import 'package:eadukalthedi_admin/utils/size_utils.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    logesh.i(SizeUtils.deviceType);

    logesh.i(SizeUtils.orientation);

    return Scaffold(
      body: Container(
        color: Colors.yellow,
        width: SizeUtils.width * 0.31,
        child: Column(
          children: [],
        ),
      ),

      drawerEnableOpenDragGesture: true,
      // drawer: Drawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Logo or AppName'),
      ),
    );
  }
}
