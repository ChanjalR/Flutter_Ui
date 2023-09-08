import 'package:flutter/material.dart';

class Product{
  final String Imagepath;
  final String price;
  Product({required this.Imagepath, required this.price});
}

class Kids extends StatelessWidget {
   Kids ({Key? key}):super(key: key);

  final List<Product> KidsPoducts=[
    Product(Imagepath: 'assets/images/kid1.jpeg', price:"\$35"),
    Product(Imagepath: 'assets/images/kid2.jpeg', price:"\$30"),
    Product(Imagepath: 'assets/images/kid3.jpeg', price:"\$20"),
    Product(Imagepath: 'assets/images/kid4.png', price:"\$30"),
    Product(Imagepath: 'assets/images/kid5.jpeg', price:"\$25"),
    Product(Imagepath: 'assets/images/kid6.jpeg', price:"\$29"),
    

  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kids Products'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: KidsPoducts.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(KidsPoducts[index].Imagepath, fit: BoxFit.cover),
                ),
                Text('Price: ${KidsPoducts[index].price}'),
              ],
            ),
          );
        }
          ),
    );
}

 
}
