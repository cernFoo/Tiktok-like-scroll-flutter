import 'package:flutter/material.dart';
import 'package:tiktok_scroll/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final List<Image> images = <Image>[
      Image.asset('assets/3kH4UzPamc.jpg'),
      Image.asset('assets/5uagk21nbx361.jpg'),
      Image.asset('assets/65CQqZAAII.jpg'),
      Image.asset('assets/EqiYlqqXMAACu88.jpg'),
      Image.asset('assets/LnodsoBwzE.jpg'),
      Image.asset('assets/nywb5bzhcx361.jpg'),
      Image.asset('assets/zU9WMrtcRw.jpg'),
    ];

    return MaterialApp(
      home: Home(images: images),
    );
  }
}

  // final List<Color> colors = <Color>[
    //   Colors.red,
    //   Colors.blue,
    //   Colors.green,
    //   Colors.pink,
    //   Colors.purple,
    //   Colors.lightGreen,
    //   Colors.deepOrangeAccent,
    //   Colors.orange,
    //   Colors.black,
    //   Colors.red,
    //   Colors.orange,
    //   Colors.green,
    //   Colors.deepOrange,
    //   Colors.deepPurple,
    //   Colors.blueGrey
    // ];


