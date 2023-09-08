import 'package:flutter/material.dart';
import 'package:ui_creation/Gents.dart';
import 'package:ui_creation/Kids.dart';
import 'package:ui_creation/Ladies.dart';
import 'package:ui_creation/Others.dart';
import 'package:ui_creation/homescreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 201, 200, 200),
        elevation: 0,
        actions: [
          Image.asset('assets/images/ser.png.webp'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Online',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  ' Shoppy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Homescreen()),
                        );
                      },
                      child: const Text('Home'),
                    ),
                  ),
            
            
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Gents()),
                        );
                      },
                      child: const Text('Gents'),
                    ),
                  ),
            
            
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Ladies()),
                        );
                      },
                      child: const Text('Ladies'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Kids()),
                        );
                      },
                      child: const Text('Kids'),
                    ),
                  ),
            
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Others()),
                        );
                      },
                      child: const Text('Others'),
                    ),
                  ),
            
                ],
              ),
            
            ),
            Column(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Image.asset('assets/images/hom1.jpeg'),
                  Image.asset('assets/images/hom3.jpeg'),
                  Image.asset('assets/images/hom4.jpeg'),
                  Image.asset('assets/images/hom5.jpeg'),
                  Image.asset('assets/images/hom6.jpeg'),
                ],
                ),
        
      
          ],
        ),
      ),
    );
  }
}
