import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp/listes/listchats.dart';

class chats extends StatelessWidget {
  const chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listchats.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(listchats[i].name),
            subtitle: Text(listchats[i].msg),
            trailing: Text(listchats[i].time),
            leading:AdvancedAvatar(
              size: 55,
              image:NetworkImage(listchats[i].image),),

          );
        });
  }
}
