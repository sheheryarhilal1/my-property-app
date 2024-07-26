// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_app/Third_page.dart';

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MySecondScreenState createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Discover Best \n Suitable Property"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: _isBookmarked ? Colors.yellow : Colors.blueGrey,
            ),
            onPressed: () {
              setState(() {
                _isBookmarked = !_isBookmarked;
              });
              // Navigate to BookmarkPage when the bookmark icon is pressed
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyDetail(
                    imageUrl:
                        "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg, description: description",
                    description: '',
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("House"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Apartment"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Floor"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Town House"),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 300, // Adjust the height to accommodate image and text
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildImageWithText(
                  'https://cdn.pixabay.com/photo/2017/03/28/12/10/chairs-2181947_1280.jpg',
                  'Sitting Area \n 230N Lahore Pakistan',
                ),
                const SizedBox(width: 20),
                _buildImageWithText(
                  'https://media.istockphoto.com/id/1540164261/photo/luxury-house-with-swimming-pool-at-night.jpg?s=1024x1024&w=is&k=20&c=mH0_Na1pJhxhDjOuKpkP05O9iR5mr8F3PgkqVo9LeCQ=',
                  'Luxury House \n Broadway Ave Los Angeles',
                ),
                const SizedBox(width: 20),
                _buildImageWithText(
                  'https://cdn.pixabay.com/photo/2016/08/26/15/06/home-1622401_1280.jpg',
                  'Interior \n Finland German Sector',
                ),
                const SizedBox(width: 20),
                _buildImageWithText(
                  'https://cdn.pixabay.com/photo/2016/01/31/14/32/architecture-1171462_1280.jpg',
                  'Kitchen\n For Cooking and Dining',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 250, // Adjust the height as needed
            color: Colors.grey[200], // Background color for visibility
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/06/24/10/47/house-1477041_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithText(String imageUrl, String text) {
    return Container(
      width: 400, // Adjust the width as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
