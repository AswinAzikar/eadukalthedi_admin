import 'package:eadukalthedi_admin/extensions/font_extension.dart';
import 'package:eadukalthedi_admin/themes/theme.dart';
import 'package:eadukalthedi_admin/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Container(
              width: SizeUtils.width * .31,
              color: Colors.blueGrey[900],
              child: Column(
                children: [
                  DrawerHeader(
                    child: Text(
                      'Logo or App title',
                      style: context.robotoRegular16
                          .copyWith(color: Colors.white, fontSize: 20.fSize),
                    ),
                  ),
                  ListTile(
                    selectedColor: Colors.white,
                    focusColor: Colors.white,
                    leading:
                        Icon(LucideIcons.layoutDashboard, color: Colors.white),
                    title: Text(
                      'Dashboard',
                      style: context.robotoRegular16
                          .copyWith(color: Colors.white, fontSize: 30.fSize),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.white),
                    title: Text(
                      'Settings',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Scaffold(
                appBar: AppBar(
                  title: Text('Main Screen'),
                ),
                body: Center(
                  child: Text(
                    'Main Content Goes Here',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
