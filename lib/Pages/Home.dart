import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shose_application_3/Pages/Appbanner.dart';
import 'package:shose_application_3/Pages/Options.dart';
import 'package:shose_application_3/Pages/menu1.dart';
import 'package:shose_application_3/Pages/prodects.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
                  size: 30,
                ),
                Icon(
                  Icons.search,
                  color: Colors.blue,
                  size: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shoes',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text('All',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        MenuBar(title: 'Airma'),
                        SizedBox(
                          width: 5,
                        ),
                        MenuBar(title: 'Airma'),
                        SizedBox(
                          width: 5,
                        ),
                        MenuBar(title: 'Airma'),
                        SizedBox(
                          width: 5,
                        ),
                        MenuBar(title: 'Airma'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ProductsView(),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  '245 Options',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    top: 8.0,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Color.fromARGB(255, 218, 217, 217),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: ListBanner.length,
                  itemBuilder: ((Builder, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Options(),
                          Options(),
                          Options(),
                        ],
                      ),
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
