import 'package:flutter/material.dart';

class Product{
  final String Imagepath;
  final String price;
  Product({required this.Imagepath, required this.price});
}
class Gents extends StatelessWidget{
   Gents ({Key? key}):super(key: key);

  final List<Product> GentsPoducts=[
    Product(Imagepath: 'assets/images/men1.jpeg', price:"\$40"),
    Product(Imagepath: 'assets/images/men2.jpeg', price:"\$45"),
    Product(Imagepath: 'assets/images/men3.jpeg', price:"\$60"),
    Product(Imagepath: 'assets/images/men4.jpeg', price:"\$49"),
    Product(Imagepath: 'assets/images/men5.jpeg', price:"\$99"),
    Product(Imagepath: 'assets/images/men6.jpeg', price:"\$50"),
    Product(Imagepath: 'assets/images/men7.jpeg', price:"\$120"),
    Product(Imagepath: 'assets/images/men8.jpeg', price:"\$70"),
    Product(Imagepath: 'assets/images/men10.jpeg', price:"\$79"),

  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gents Products'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: GentsPoducts.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(GentsPoducts[index].Imagepath, fit: BoxFit.cover),
                ),
                Text('Price: ${GentsPoducts[index].price}'),
              ],
            ),
          );
        }
          ),
    );
}
}