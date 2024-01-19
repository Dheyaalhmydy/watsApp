import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp/listes/liststatus.dart';

class callsscreen extends StatelessWidget {
  const callsscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: liststatus.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(liststatus[i].name),
            leading: AdvancedAvatar(
              image: NetworkImage(liststatus[i].image),
            ),
            subtitle: Text("2 min ago"),
            trailing: Icon(Icons.missed_video_call,size: 35,color:Colors.red,),
          );
        });
  }
}
