import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shose_application_3/Pages/Appbanner.dart';

class MyProductsPage extends StatelessWidget {
  final String title;
  final String price;

  final image;

  MyProductsPage(
      {required this.title,
      required this.price,
      required this.image,
      super.key});
  final color = Color(0xffE3F5FE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(400),
                ),
                color: Color(0xff2F62D7),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 33,
                      color: Color(0xffE3F5FE),
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xffE3F5FE),
                      fontSize: 20,
                    ),
                  ),
                  MyColor(),
                ],
              ),
            ),
            Positioned(
                right: 50,
                bottom: -50,
                child: Image(height: 250, width: 250, image: image)),
          ]),

          //shoes informations

          Container(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'KDBEF',
                    style: TextStyle(
                        color: Color(0xff2F62D7),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 25,
                    color: Color(0xff2F62D7),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                      'descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 144, 144, 145),
                      ))),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pick Shoe Color',
                style: TextStyle(
                    color: Color(0xff2F62D7),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyshoesColor(
                    color: Colors.pink,
                  ),
                  MyshoesColor(
                    color: Color.fromARGB(255, 77, 233, 30),
                  ),
                  MyshoesColor(
                    color: Color.fromARGB(255, 30, 101, 233),
                  ),
                  MyshoesColor(
                    color: Color.fromARGB(255, 233, 77, 30),
                  ),
                  MyshoesColor(
                    color: Color.fromARGB(255, 30, 220, 233),
                  ),
                ],
              ),
            ]),
          ))
        ],
      ),
    );
  }
}

class MyColor extends StatefulWidget {
  @override
  State<MyColor> createState() => _MyColorState();
}

class _MyColorState extends State<MyColor> {
  Color color = Color(0xffE3F5FE);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          color == Color(0xffE3F5FE)
              ? color = Colors.red
              : color = Color(0xffE3F5FE);
        });
      },
      child: Icon(
        Icons.favorite,
        size: 33,
        color: color,
      ),
    );
  }
}

class MyshoesColor extends StatefulWidget {
  final color;
  const MyshoesColor({required this.color, super.key});
  @override
  State<MyshoesColor> createState() => _MyshoesColorState();
}

class _MyshoesColorState extends State<MyshoesColor> {
  Color _bordercolor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _bordercolor == Colors.transparent
                  ? _bordercolor = Color.fromARGB(255, 131, 131, 131)
                  : _bordercolor = Colors.transparent;
            });
          },
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: _bordercolor,
                width: 4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
