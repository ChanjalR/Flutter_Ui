import 'package:flutter/material.dart';

class Product{
  final String Imagepath;
  final String price;
  Product({required this.Imagepath, required this.price});
}

class Ladies extends StatelessWidget {
   Ladies ({Key? key}):super(key: key);
   
  final List<Product> LadiesProduct=[
    Product(Imagepath: 'assets/images/wmn1.png', price:"\$110"),
    Product(Imagepath: 'assets/images/wmn2.jpeg', price:"\$100"),
    Product(Imagepath: 'assets/images/wmn3.jpeg', price:"\$110"),
    Product(Imagepath: 'assets/images/wmn4.jpeg', price:"\$70"),
    Product(Imagepath: 'assets/images/wmn5.jpeg', price:"\$55"),
    Product(Imagepath: 'assets/images/wmn6.jpeg', price:"\$90"),
    Product(Imagepath: 'assets/images/wmn7.png', price:"\$75"),
    Product(Imagepath: 'assets/images/wmn8.jpeg', price:"\$55"),
   

  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ladies Products'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: LadiesProduct.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(LadiesProduct[index].Imagepath, fit: BoxFit.cover),
                ),
                Text('Price: ${LadiesProduct[index].price}'),
              ],
            ),
          );
        }
          ),
    );
}
}
