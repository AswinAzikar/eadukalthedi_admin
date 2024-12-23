import 'package:eadukalthedi_admin/utils/constants.dart';
import 'package:eadukalthedi_admin/utils/size_utils.dart';
import 'package:flutter/material.dart';

class SidebarNavigator extends StatefulWidget {
  final Widget? addtionalWidget;
  final List<String> buttonLabels;
  final List<Widget> pages;
  final List<IconData> icons;
  final Color activeColor;
  final Color inactiveColor;

  const SidebarNavigator({
    super.key,
    required this.buttonLabels,
    required this.pages,
    this.activeColor = Colors.white,
    this.inactiveColor = const Color.fromARGB(255, 0, 12, 21),
    required this.icons,
    this.addtionalWidget = const SizedBox(),
  });

  @override
  _SidebarNavigatorState createState() => _SidebarNavigatorState();
}

class _SidebarNavigatorState extends State<SidebarNavigator> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: SizeUtils.width * 0.3,
          color: widget.inactiveColor,
          child: Column(
            children: [
              ...widget.buttonLabels
                  .asMap()
                  .map((index, label) => MapEntry(
                        index,
                        _buildSidebarButton(index, label),
                      ))
                  .values,
            ],
          ),
        ),
        Expanded(
          child: widget.pages[_selectedIndex],
        ),
      ],
    );
  }

  Widget _buildSidebarButton(int index, String label) {
    final bool isActive = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        color: isActive ? widget.activeColor : widget.inactiveColor,
        padding: const EdgeInsets.symmetric(
          vertical: paddingLarge,
          horizontal: paddingLarge,
        ),
        child: Row(
          children: [
            Icon(
              widget.icons[index],
              color: isActive ? Colors.blue : Colors.white,
              size: 40.h,
            ),
            gapLarge,
            Text(
              label,
              style: TextStyle(
                color: isActive ? Colors.blueGrey[900] : Colors.white,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
