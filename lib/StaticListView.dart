
import 'package:flutter/material.dart';

class StaticListView extends StatefulWidget {

  const StaticListView({super.key});

  @override
  State<StaticListView> createState() => _StaticListViewState();

}

class _StaticListViewState extends State<StaticListView>{

  @override
  Widget build(BuildContext context){

      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Static List View',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset('assets/images/bruce.jpg'),
            ),
            Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset('assets/images/captain.jpg'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset('assets/images/hawkeye.jpg'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset('assets/images/loki.jpg'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset('assets/images/natasha.jpg'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset('assets/images/stark.jpg'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset('assets/images/thanos.jpg'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset('assets/images/thor.jpeg'),
          ),
          ],
        ),
      );
  }
  
}