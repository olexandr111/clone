import 'package:flutter/material.dart';
import 'package:fsc/components/post_item.dart';
import 'package:fsc/styles/app_colors.dart';
import 'package:fsc/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text('Page'),
        centerTitle: false,
        actions: [
          Icon(Icons.location_off_outlined)
        ],
      ),
      body: ListView.separated(
        itemCount: users.length,
        separatorBuilder: (BuildContext context,int index){
          return SizedBox(height: 20);
        },
        itemBuilder: (context,index){
          return PostItem(
            user: users[index],
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 20; i++) {
      users.add('User №$i');
    }
    return users;
  }
}
