import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  final String menuName;
  final bool isSelected;
  final VoidCallback ontap;
  const MenuBar(
      {super.key,
      required this.menuName,
      required this.isSelected,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
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
