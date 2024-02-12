import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const UserItem({
    Key? key,
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$userId',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          '$id',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        Text(
          '$completed',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
