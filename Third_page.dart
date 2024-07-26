import 'package:flutter/material.dart';
import 'package:my_app/last_Screen.dart';

class MyDetail extends StatefulWidget {
  final String imageUrl;
  final String description;

  const MyDetail({
    super.key,
    required this.imageUrl,
    required this.description,
  });

  @override
  // ignore: library_private_types_in_public_api
  _MyDetailState createState() => _MyDetailState();
}

class _MyDetailState extends State<MyDetail> {
  Color _iconColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2016/11/29/03/53/house-1867187_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.description),
                  IconButton(
                    icon: Icon(Icons.bookmark, color: _iconColor),
                    onPressed: () {
                      setState(() {
                        _iconColor = Colors.yellow;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2018/02/16/14/38/portrait-3157821_1280.jpg'),
                      ),
                      SizedBox(width: 10),
                      Text('Osmansis \nOwner Craftsman House'),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.call, color: Colors.green),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Completely redone in 2021\n'
                '4 bedrooms, 2 washrooms, 1 garage\n'
                'Amazing curb appeal and entire area waterviews\n'
                'Tons of built-ins and extras',
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 20),
              const Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 100,
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2016/06/24/11/49/architecture-1477103_1280.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 100,
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2014/07/10/17/18/large-home-389271_1280.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 100,
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2016/11/29/03/53/house-1867187_1280.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 100,
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '\$1,200,000', // Example price
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WishListScreen(
                            imageUrl: widget.imageUrl,
                            description: widget.description,
                          ),
                        ),
                      );
                    },
                    child: const Text('Buy Now'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
