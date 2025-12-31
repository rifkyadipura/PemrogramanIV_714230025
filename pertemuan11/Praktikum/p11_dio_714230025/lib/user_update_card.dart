import 'package:flutter/material.dart';
import 'user.dart';

class UserUpdateCard extends StatelessWidget {
  final UserCreate usrUpdate;

  const UserUpdateCard({super.key, required this.usrUpdate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.orange[200],
      ),
      child: Column(
        children: [
          _row('Name', usrUpdate.name),
          _row('Job', usrUpdate.job),
          _row('Updated At', usrUpdate.createdAt ?? '-'),
        ],
      ),
    );
  }

  Widget _row(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 90,
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Text(': $value')),
      ],
    );
  }
}
