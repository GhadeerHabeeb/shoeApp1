import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
              vertical: 5,
            ),
            child: GNav(
                color: Color(0xffE3F5FE),
                // tab button ripple color when pressed
                hoverColor:
                    Color.fromARGB(255, 97, 97, 97), // tab button hover color
                haptic: true, // haptic feedback
                tabBorderRadius: 15,
                tabActiveBorder: Border.all(
                    color: Colors.black, width: 1), // tab button border
                // tab button border
                // tab button shadow
                curve: Curves.easeOutExpo, // tab animation curves
                duration: Duration(milliseconds: 900), // tab animation duration
                gap: 8, // the tab button gap between icon and text
                // unselected icon color
                activeColor: Color.fromARGB(255, 0, 0, 0),
                backgroundColor: Colors.blue, // selected icon and text color
                iconSize: 24, // tab button icon size
                tabBackgroundColor: Color(0xff2F62D7)
                    .withOpacity(0.1), // selected tab background color
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 5), // navigation bar padding
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.favorite_border_outlined,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  )
                ]),
          ),
        ),
      ),
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
              SizedBox(
                height: 20,
              ),
              Text(
                'Pick Shoe Size',
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
                  MySize(size: '4k6'),
                  MySize(size: '5k7'),
                  MySize(size: '6k8'),
                  MySize(size: '7k9'),
                ],
              )
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
                  ? _bordercolor = Color.fromARGB(255, 19, 134, 23)
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

class MySize extends StatefulWidget {
  final String size;
  const MySize({required this.size, super.key});

  @override
  State<MySize> createState() => _MySizeState();
}

class _MySizeState extends State<MySize> {
  Color _bordercolor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _bordercolor == Colors.transparent
              ? _bordercolor = Color.fromARGB(255, 19, 134, 23)
              : _bordercolor = Colors.transparent;
        });
      },
      child: Container(
          height: 50,
          width: 60,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 183, 230, 253),
              border: Border.all(
                color: _bordercolor,
                width: 4,
              )),
          child: Center(
            child: Text(
              widget.size,
              style: TextStyle(
                  color: Color(0xff2F62D7),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
