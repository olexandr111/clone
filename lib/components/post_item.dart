import 'package:flutter/material.dart';

import '../styles/app_text.dart';
import '../variables.dart';

class PostItem extends StatelessWidget {
  final String user;

  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/1.png',
                width: 40,
                height: 40,
              ),
              SizedBox(width: 12),
              Text(user, style: AppText.subtitle3)
            ],
          ),
          Image.asset(
            'assets/images/5.jpg',
            width: w,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Image',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
