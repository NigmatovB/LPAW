// ignore_for_file: use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> _images = [
    'assets/image/img1.jpeg',
    'assets/image/img2.jpeg',
    'assets/image/img3.jpeg',
    'assets/image/img4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              reverse: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 1000)),
          items: _images.map(
            (item) {
              return Builder(
                builder: (context) {
                  return Image.asset(item);
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
