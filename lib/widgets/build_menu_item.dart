import 'package:flutter/material.dart';

Widget buildMenuItem({
  required IconData icon,
  required String text,
  required bool isCollapsed,
  int badgeCount = 0,
  bool highlight = false,
}) {
  return ListTile(
    leading: Icon(
      icon,
      color: highlight ? Colors.green : Colors.black,
    ),
    title: isCollapsed
        ? null
        : Text(
      text,
      style: TextStyle(
        color: highlight ? Colors.green : Colors.black,
      ),
    ),
    trailing: badgeCount > 0 && !isCollapsed
        ? CircleAvatar(
      radius: 10,
      backgroundColor: Colors.red,
      child: Text(
        '$badgeCount',
        style: const TextStyle(fontSize: 12, color: Colors.white),
      ),
    )
        : null,
    onTap: () {
      // Action for menu item
    },
  );
}