import 'package:flutter/material.dart';

class AddToCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0FBFC),
      appBar: AppBar(
        title: Text('Your Cart'),
        backgroundColor: Color(0xFF3D5A80),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CartItemWidget(),
          SizedBox(height: 10),
          CartItemWidget(),
          SizedBox(height: 10),
          CartItemWidget(),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to checkout
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3D5A80),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              child: Text('Proceed to Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(Icons.book, size: 40, color: Color(0xFF3D5A80)),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Book Title',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('Author Name',
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                Text('\$12.99',
                    style: TextStyle(fontSize: 16, color: Color(0xFF3D5A80))),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.remove_circle_outline, color: Colors.red),
            onPressed: () {
              // Remove item logic
            },
          ),
        ],
      ),
    );
  }
}
