import 'package:flutter/material.dart';

class DynamicListImages extends StatefulWidget {
  const DynamicListImages({super.key});

  @override
  State<DynamicListImages> createState() => _DynamicListImages();
}

class _DynamicListImages extends State<DynamicListImages> {

  List<String> imageList = [
    'bruce.jpg',
    'captain.jpg',
    'hawkeye.jpg',
    'loki.jpg',
    'natasha.jpg',
    'stark.jpg',
    'thanos.jpg',
    'thor.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Dynamic List Images',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              //width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/${imageList[index]}',
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
           
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
