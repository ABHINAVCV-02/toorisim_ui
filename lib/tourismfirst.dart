import 'package:flutter/material.dart';
import 'package:project1/dummy_tour.dart';


class Tour1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Toorisum",style: TextStyle(color: Colors.pinkAccent,fontSize: 20),),
      ),
      backgroundColor: Colors.black12,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text('Places',style: TextStyle(color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text('Popular', style: TextStyle(fontSize: 20,color: Colors.white)),
              ),
              ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(15),
                children: dummyProducts.map((product) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(product["image"])),
                      ),
                      child: ListTile(
                        title: Text(product["name"],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        onTap: () => goToSecond(context, product["id"]),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ));
  }

  void goToSecond(BuildContext context, productId) {
    Navigator.pushNamed(context, "second", arguments: productId);
  }
}