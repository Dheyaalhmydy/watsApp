import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/controll/controllerhome.dart';
import 'package:whatsapp/view/screen/calls.dart';
import 'package:whatsapp/view/screen/chats.dart';
import 'package:whatsapp/view/screen/setting.dart';
import 'package:whatsapp/view/screen/status.dart';
import 'package:whatsapp/view/screen/widget/popbutwidget.dart';

class Home extends GetView<homecontroller> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(homecontroller());
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: IconButton(
                    onPressed: () {
                      controller.OpenCamera();
                    },
                    icon: Icon(Icons.camera_alt_outlined)),
              ),
              Tab(
                child: Text("chats"),
              ),
              Tab(
                child: Text("status"),
              ),
              Tab(
                child: Text("calls"),
              ),
            ],
          ),
          actions: [
            popbutwidget(
              firsttext: Text("setting"),
              sectext: Text("started MSG"),
              thtext: Text("WhatsApp web"),
              fourtext: Text("profile"),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Get.to(
                    () => settingscreen(),
                  );
                },
                icon: Icon(Icons.settings)),
          ],
        ),
        body: TabBarView(children: [
          chats(),
          status(),
          callsscreen(),
        ]),
      ),
    );
  }
}
