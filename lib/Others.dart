import 'package:flutter/material.dart';

class Product{
  final String Imagepath;
  final String price;
  Product({required this.Imagepath, required this.price});
}

class Others extends StatelessWidget {
  Others ({Key? key}):super(key: key);

  final List<Product> OtherProduct=[
    Product(Imagepath: 'assets/images/oth1.png', price:"\$80"),
    Product(Imagepath: 'assets/images/oth2.png', price:"\$55"),
    Product(Imagepath: 'assets/images/oth3.jpeg', price:"\$80"),
    Product(Imagepath: 'assets/images/oth4.jpeg', price:"\$40"),
    Product(Imagepath: 'assets/images/oth5.png', price:"\$50"),
    Product(Imagepath: 'assets/images/oth6.jpeg', price:"\$45"),
    Product(Imagepath: 'assets/images/oth7.jpeg', price:"\$120"),
    Product(Imagepath: 'assets/images/oth8.png', price:"\Free"),
   

  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Products'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: OtherProduct.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(OtherProduct[index].Imagepath, fit: BoxFit.cover),
                ),
                Text('Price: ${OtherProduct[index].price}'),
              ],
            ),
          );
        }
          ),
    );
}
}
