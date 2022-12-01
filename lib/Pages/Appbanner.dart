import 'package:flutter/cupertino.dart';

class AppBanner {
  final int id;
  final String title;
  final image;
  final String price;

  AppBanner({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
  });
}

List<AppBanner> ListBanner = [
  AppBanner(
      id: 1,
      title: 'Shoe 1',
      image: AssetImage('images/shoes.png'),
      price: '12.500'),
  AppBanner(
      id: 2,
      title: 'Shoe 2',
      image: AssetImage('images/shoes2.png'),
      price: '4.500'),
  AppBanner(
      id: 3,
      title: 'Shoe 3',
      image: AssetImage('images/shoes3.png'),
      price: '30.500'),
  AppBanner(
      id: 3,
      title: 'Shoe 4',
      image: AssetImage('images/shoes4.png'),
      price: '20.500'),
];
