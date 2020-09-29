import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final bool isExpanded;
  final void Function() onTap;
  CustomBottomAppBar({this.isExpanded, this.onTap});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(30);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        isExpanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
        color: Colors.white,
        size: 28,
      ),
      onTap: onTap,
    );
  }


}
