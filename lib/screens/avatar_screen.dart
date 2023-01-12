import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
                backgroundColor: Colors.blue, child: Text('RT')),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 118,
        backgroundImage:
            NetworkImage('https://avatarfiles.alphacoders.com/308/308598.png'),
      )),
    );
  }
}
