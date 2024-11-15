import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      theme: ThemeData(
        fontFamily: 'Roboto', // Set the default font family to Roboto
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images & Assets'),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.black, // Set the main background to black
        body: Padding(
          padding:
              const EdgeInsets.all(16.0), // Overall padding around the list
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange[50], // Background color for food images
                  borderRadius: BorderRadius.circular(5), // Rounded corners
                ),
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                margin: const EdgeInsets.only(bottom: 16.0),
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 10),
                    Image.network(
                      'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', // Pizza
                      width: 350,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 12),
                    Image.network(
                      'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', // Pasta
                      width: 350,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 12),
                    Image.network(
                      'https://images.pexels.com/photos/1260968/pexels-photo-1260968.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', // Salad
                      width: 350,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),

              // ListTile items with different background colors and spacing
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.lightBlue[50],
                      child: const ListTile(
                        leading: Icon(Icons.local_pizza),
                        title: Text(
                          'Roboto Black 900',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10), // Space between ListTiles
                    Container(
                      color: Colors.lightGreen[50],
                      child: const ListTile(
                        leading: Icon(Icons.fastfood),
                        title: Text(
                          'Roboto Bold 700',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      color: Colors.pink[50],
                      child: const ListTile(
                        leading: Icon(Icons.emoji_food_beverage),
                        title: Text(
                          'Roboto Light 400',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      color: const Color.fromARGB(255, 192, 140, 200),
                      child: const ListTile(
                        leading: CircleAvatar(child: Text('R1')),
                        title: Text(
                          'Roboto Medium Italic 500',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      color: Colors.yellow[50],
                      child: const ListTile(
                        leading: CircleAvatar(child: Text('R2')),
                        title: Text(
                          'Roboto Thin Italic 400',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Horizontal ListView for asset images with background color
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple[50], // Background color for asset images
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/images/biryani.jpg',
                      width: 350,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 12),
                    Image.asset(
                      'assets/images/chapati.jpg',
                      width: 350,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 12),
                    Image.asset(
                      'assets/images/indian.jpg',
                      width: 350,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
