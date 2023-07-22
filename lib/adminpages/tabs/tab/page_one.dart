import 'package:coffeebeansorter_mobile/adminpages/tabs/tab/userlistitem.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  final List<dynamic> family;

  const PageOne({
    required this.family,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...family.map((user) => UserListItem(
          item: user,
        )).toList(),

      ],
    );
  }
}

