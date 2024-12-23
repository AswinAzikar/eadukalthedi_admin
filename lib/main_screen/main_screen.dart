import 'package:eadukalthedi_admin/extensions/font_extension.dart';
import 'package:eadukalthedi_admin/main_screen/sidebar_navigator/sidebar_navigator.dart';
import 'package:eadukalthedi_admin/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: SizeUtils.width * .31,
          leading: Center(
              child: Text(
            'Eadukalthedi Admin',
            style: context.robotoBold20.copyWith(fontSize: 30.fSize),
          )),
          automaticallyImplyLeading: false,
        ),
        body: SidebarNavigator(
          icons: [
            LucideIcons.layoutDashboard,
            LucideIcons.penTool,
            LucideIcons.user,
            LucideIcons.barChartHorizontal
          ],
          buttonLabels: ['Dashboard', 'Authors', 'Users', 'Special Category'],
          pages: [
            Center(child: Text('Dashboard')),
            Center(child: Text('Authors')),
            Center(child: Text('Users')),
            Center(child: Text('Special Category')),
          ],
        ),
      ),
    );
  }
}
