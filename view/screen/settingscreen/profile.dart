import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("profile")),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AdvancedAvatar(
              size: 160,
              image:NetworkImage("https://img.kuaiicai.com/agent_avatar/avatar-204.png")),
          ),
        ),
        ListTile(title: Text("Name"),
        subtitle: Text("Dheya"),
        leading:Icon(Icons.person) ,
        trailing: IconButton(onPressed: (){},
        icon: Icon(Icons.edit),
        ),
        ),
        ListTile(title: Text("About"),
        subtitle: Text("one eday,i will did it"),
        leading:Icon(Icons.info) ,
        trailing: IconButton(onPressed: (){},
        icon: Icon(Icons.edit),
        ),
        ),
        ListTile(title: Text("phone"),
        subtitle: Text("+967 715923011"),
        leading:Icon(Icons.phone) ,
        trailing: IconButton(onPressed: (){},
        icon: Icon(Icons.edit),
        ),
        ),
      ]),
    );
  }
}
