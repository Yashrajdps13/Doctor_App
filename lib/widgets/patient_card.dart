import 'package:flutter/material.dart';
import 'package:mongo_test/models/patients.dart';

class UserCard extends StatelessWidget {
  UserCard(
      {required this.user, required this.onTapDelete, required this.onTapEdit});
  final User user;
  final void Function() onTapEdit, onTapDelete;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      color: Colors.white,
      child: ListTile(
        leading: Text(
          '${user.patientName}',
          style: Theme.of(context).textTheme.headline6,
        ),
        // title: Text(user.patientEmail),
        // subtitle: Text('${user.doctorName}'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Icon(Icons.edit),
              onTap: onTapEdit,
            ),
            GestureDetector(
              child: Icon(Icons.delete),
              onTap: onTapDelete,
            ),
          ],
        ),
      ),
    );
  }
}
