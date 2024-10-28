import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  const BottomNavbarItem({
    super.key,
    required this.icon,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 26,
          color: isActive
              ? Colors.blue
              : Colors.grey, // Active: blue, Inactive: gray
        ),
        SizedBox(height: 4), // Spacing between icon and indicator
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(1), // Rounded indicator
                ),
              )
            : Container(
                width: 30,
                height: 2,
                color: Colors.transparent, // Keep space for inactive indicator
              ),
      ],
    );
  }
}
