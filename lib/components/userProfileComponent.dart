import "package:flutter/material.dart";

class UserProfileLinkComponent extends StatelessWidget {
  final String label;
  final iconData;
  const UserProfileLinkComponent(
      {super.key, required this.label, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Icon(
            iconData,
            color: Colors.grey.shade600,
          ),
          SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
