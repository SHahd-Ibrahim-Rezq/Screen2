import 'package:flutter/material.dart';
import 'package:screen2/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          title: Text(
            "Details",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 183, 43, 33),
                size: 28,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var counter = 2;
  void increaseCouter() {
    setState(() {
      counter++;
    });
  }
  void decreaseCouter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/image.png',
          ),
          _buildUpperRow(),
          Text(
            "Minimalist style with pillow",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Text(
            style: TextStyle(fontSize: 16),

            "a modern, stylish chair with a unique curved wooden frame and beige upholstered cushions. The chair has an elegant, organic shape with smooth curves, giving it a mid-century modern aesthetic. The legs are slender and angled, complementing the overall sleek and sophisticated design. The upholstery appears soft and textured, providing a comfortable seating experience.",
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _buildColorDot(Colors.blue),
                  _buildColorDot(Colors.red),
                  _buildColorDot(Colors.green),
                  _buildColorDot(Colors.yellow),
                ],
              ),
              _buildQuantitySelector(),
            ],
          ),
          _buildBottomRow(),
        ],
      ),
    );
  }

  Widget _buildUpperRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Chair",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          Text(
            "\$212",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildColorDot(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: CircleAvatar(radius: 12, backgroundColor: color),
    );
  }

  Widget _buildQuantitySelector() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              decreaseCouter();
            },
            icon: Icon(Icons.remove),
          ),
          Text(
            "$counter",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {
              increaseCouter();
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.red, width: 1),
      ),
          child: IconButton(
            icon: const Icon(Icons.favorite_outline, size: 28),
            onPressed: () {},
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
          ),
          child: const Text("Add to cart"),
        ),
      ],
    );
  }
}
