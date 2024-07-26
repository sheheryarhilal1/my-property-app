// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  final String imageUrl;
  final String description;

  const WishListScreen({
    super.key,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wish List'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2016/11/29/03/53/house-1867187_1280.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Completely redone in 2021\n'
                        '4 bedrooms, 2 washrooms, 1 garage\n'
                        'Amazing curb appeal and entire area waterviews\n',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.bookmark_border),
                  onPressed: () {
                    // Add your bookmark functionality here
                  },
                ),
              ],
            ),
            const SizedBox(height: 20), // Space between containers

            // Second Container
            Container(
              height: 200,
              width: double.infinity,
              child: Image.network(
                "https://cdn.pixabay.com/photo/2016/06/24/11/49/architecture-1477103_1280.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Beautiful Modern House\n1234 Maple St, Springfield',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Recently renovated with modern amenities\n',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.bookmark_border),
                  onPressed: () {
                    // Add your bookmark functionality here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
