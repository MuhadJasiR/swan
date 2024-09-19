import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDetailPage(),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image Carousel
            Container(
              height: 300,
              child: PageView(
                children: [
                  Image.network('https://via.placeholder.com/300'),
                  Image.network('https://via.placeholder.com/300'),
                  Image.network('https://via.placeholder.com/300'),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Product Info
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Max & Co',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Veste En Jean Nichel (Navy Blue)',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'OMR 5.000',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'OMR 9.000',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // Color Selector
                  Text('Select Color'),
                  Row(
                    children: [
                      _buildColorOption(Colors.blue),
                      _buildColorOption(Colors.red),
                      _buildColorOption(Colors.black),
                      _buildColorOption(Colors.amber),
                    ],
                  ),
                  SizedBox(height: 10),
                  // Size Selector
                  Text('Select Size'),
                  Row(
                    children: [
                      _buildSizeOption('45', isSelected: false),
                      _buildSizeOption('46', isSelected: true),
                      _buildSizeOption('48', isSelected: false),
                      _buildSizeOption('50', isSelected: false),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Product Description
                  ExpansionTile(
                    title: Text('PRODUCT DESCRIPTION'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'This is the product description. It provides details about the product, its materials, and more.',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // You May Also Like Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You May Also Like',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildSuggestedItem(),
                        _buildSuggestedItem(),
                        _buildSuggestedItem(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text('WISHLIST'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('ADD TO BAG'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }

  Widget _buildSizeOption(String size, {bool isSelected = false}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.purple : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(size),
    );
  }

  Widget _buildSuggestedItem() {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Image.network(
            'https://via.placeholder.com/100',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 5),
          Text(
            'OMR 5.000',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
