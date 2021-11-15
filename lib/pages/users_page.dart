import 'package:contador/controllers/users_controller.dart';
import 'package:contador/models/User.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users2"),
      ),
      body: GetBuilder<UsersController>(
          init: UsersController(),
          builder: (_) {
            if (_.loading) {
              return Center(
                child: LinearProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: _.users.length,
              itemBuilder: (context, index) {
              final User user = _.users[index];
              return ListTile(
                title: Text(user.firstName),
                subtitle: Text(user.email),
              );
            });
          }),
    );
  }
}
