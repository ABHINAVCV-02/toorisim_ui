import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project1/dummy_tour.dart';


class Tour2 extends StatelessWidget {
  var images = [
    NetworkImage(
        'https://images.unsplash.com/photo-1516108317508-6788f6a160e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aXRhbHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1534445867742-43195f401b6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGl0YWx5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1594881497142-08fdfdfc4074?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fGl0YWx5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
  ];
  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)?.settings.arguments; // id from previous page
    final product =
    dummyProducts.firstWhere((element) => element["id"] == productId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
       title: Text("About",style: TextStyle(color: Colors.white,fontSize: 20),),
      ),

      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(product["image"]))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("${product["name"]}",
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text("${product["description"]}"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Places to Visit",
                  style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white),
                )),
          ),
          CarouselSlider(
            items: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: images[index], fit: BoxFit.cover)),
                ),
              );
            }),
            options: CarouselOptions(
              height: 200,
              pauseAutoPlayInFiniteScroll: true,
              autoPlay: true,
              enlargeCenterPage: false,
              viewportFraction: .4,
              aspectRatio: 16 / 7,
              initialPage: 2,
            ),
          ),
        ],
      ),
    );
  }
}