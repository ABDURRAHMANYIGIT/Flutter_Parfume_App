import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  final String menuName;
  final int index;
  final bool isSelected;
  final Function(int) ontap;
  const MenuBar(
      {super.key,
      required this.menuName,
      required this.isSelected,
      required this.ontap,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap(index),
      child: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Text(
          menuName,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[600],
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
