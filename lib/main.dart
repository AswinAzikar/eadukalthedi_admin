import 'package:eadukalthedi_admin/routes/routes.dart';
import 'package:eadukalthedi_admin/utils/size_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.mainScreen,
      onGenerateRoute: Routes.generateRoute,
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Sizer(
        builder: (context, Orientation orientation, DeviceType deviceType) {
          return child ?? SizedBox();
        },
      ),
    );
  }
}
