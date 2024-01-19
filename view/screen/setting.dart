import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:get/get.dart';
import 'package:whatsapp/view/screen/chats.dart';
import 'package:whatsapp/view/screen/settingscreen/profile.dart';

class settingscreen extends StatelessWidget {
  const settingscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("setting")),
      body: Container(
        child: Column(children: [
          Container(
            child: ListTile(
              onTap: () {
                Get.to(() => profilescreen());
              },
              title: Text('DheyaCod'),
              subtitle: Text(
                "لا اله الا الله",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: AdvancedAvatar(
                size: 55,
                image: NetworkImage(
                    "https://img.kuaiicai.com/agent_avatar/avatar-204.png"),
              ),
              trailing: Icon(Icons.qr_code),
            ),
          ),
          Divider(
            height: 3,
            color: Colors.grey,
          ),
          Container(
            height: 600,
            child: ListView(
              children: [
                ListTile(
                  title: Text('Account'),
                  subtitle: Text(
                    'privcy,securty,chenge number',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.key),
                ),
                ListTile(
                  title: Text('chats'),
                  subtitle: Text(
                    'themes,background,screen ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.chat),
                ),
                ListTile(
                  title: Text('notifcation msg'),
                  subtitle: Text(
                    'privcy,securty',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.notifications),
                ),
                ListTile(
                  title: Text('buck up'),
                  subtitle: Text(
                    'network,auto download,',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.backup),
                ),
                ListTile(
                  title: Text('help'),
                  subtitle: Text(
                    'help center',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.help_center),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
