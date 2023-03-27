import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Wreckler Badbach'),
        actions:  [
          Container(margin: const EdgeInsets.only(right: 10),child:  CircleAvatar(backgroundColor: Colors.indigo[900] ,child: const Text('WB')))
        ],
      ),
      body: const Center(
         child: CircleAvatar(maxRadius: 120,backgroundImage: NetworkImage('https://lumiere-a.akamaihd.net/v1/images/60a7cbd317ff450001d577e2-image_50ff8f72.jpeg?region=0,0,1536,864&width=768'))
      ),
    );
  }
}