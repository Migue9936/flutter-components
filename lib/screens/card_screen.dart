import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: const[
           CustomCardType1(),
           SizedBox(height: 10),
           CustomCardType2(title: 'Rise of the Skywalker', imageURL: 'https://media.revistagq.com/photos/604b2f499fc97c95e82c1c14/16:9/w_2560%2Cc_limit/2101913.jpg',),
           SizedBox(height: 10),
           CustomCardType2(title: 'End of the Clone Wars', imageURL: 'https://i0.wp.com/wallpapercave.com/wp/wp7465792.png?ssl=1',),
           SizedBox(height: 10,),
           CustomCardType2(imageURL: 'https://i.blogs.es/94c3de/1366_2000/1366_2000.jpeg',),
           SizedBox(height: 10,),
           CustomCardType2(imageURL: 'https://imagenes.20minutos.es/files/og_thumbnail/uploads/imagenes/2022/10/26/la-remesa-mala-2t-serie-4-de-enero-de-2023.jpeg'),
           SizedBox(height: 100,)

        ],
      ),
    );
  }
}


