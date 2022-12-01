import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shose_application_3/Pages/Appbanner.dart';
import 'package:shose_application_3/page2.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue[300],
          ),
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.7),
            itemCount: ListBanner.length,
            itemBuilder: ((context, index) {
              return Container(
                  child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  scale: 0.5,
                  image: ListBanner[index].image,
                )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ListBanner[index].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        ListBanner[index].price,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyProductsPage(
                                        title: ListBanner[index].title,
                                        price: ListBanner[index].price,
                                        image: ListBanner[index].image)));
                          },
                          child: Text('More',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              )))
                    ],
                  ),
                ),
              ));
            }),
          ),
        ),
      ],
    );
  }
}
