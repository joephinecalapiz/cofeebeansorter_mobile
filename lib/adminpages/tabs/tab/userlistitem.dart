import 'package:coffeebeansorter_mobile/model/user.dart';
import 'package:flutter/material.dart';

class UserListItem extends StatelessWidget {

  final User item;

  const UserListItem({
    required this.item,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
          left: 5,
          right: 5
      ),
      shrinkWrap: true,
      children: <Widget>[
        const SizedBox(
          height: 15,
        ),
        Theme(
          data: ThemeData(
            splashColor: const Color(0xff6fffe9),
            highlightColor: const Color(0xFF2C776A).withOpacity(.5),
          ),
          child: ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            tileColor: const Color(0xFF3a506b),
            iconColor: Colors.white,
            textColor: Colors.white,
            // leading: CircleAvatar(backgroundImage: AssetImage(item.icon)),
            title: Text(item.name ?? 'Not a member',
              style: const TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            // subtitle: Text(item.relationship ?? ''),
            trailing: const Icon(Icons.navigate_next,
              size: 30,
            ),
            // onTap: () {
            //   Navigator.push(
            //     context, MaterialPageRoute(
            //       builder: (context) => PageTwo(info: item)
            //   ),
            //   );
            // },
          ),
        ),
      ],
    );
  }
}
