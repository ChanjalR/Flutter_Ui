import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: const Center(
        child: Text('Welcome to Home screen'),
      ),
    );
  }
  
 
}
