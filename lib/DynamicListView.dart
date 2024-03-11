import 'package:flutter/material.dart';

class DynamicListView extends StatefulWidget {
  const DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListView();
}

class _DynamicListView extends State<DynamicListView> {
  List<String> list = List.empty(growable: true);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Dynamic List View',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              //width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  list[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
            list.add(_counter.toString());
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
