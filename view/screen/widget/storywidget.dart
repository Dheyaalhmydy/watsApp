import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:story_viewer/story_viewer.dart';

class storywidget extends StatelessWidget {
  String url;
  String username;
   storywidget({Key? key,required this.url,required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoryViewer(
      backgroundColor: Colors.black,
      ratio: StoryRatio.r16_9,
      stories: [
        StoryItemModel(imageProvider: NetworkImage(url),
        
        ),
      
      ],
      userModel: UserModel(username: username,profilePicture: NetworkImage(url)),
    );
  }
}
