import 'package:flutter/material.dart';

class Presentation extends StatefulWidget {
  const Presentation({super.key});

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            pinned: true,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(title: Text("Demo")),
          ),
          SliverAppBar(
            backgroundColor: Colors.red,
            pinned: false,
            expandedHeight: 75.0,
            flexibleSpace: FlexibleSpaceBar(title: Text("New text bar")),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(title: Text('Item $index'));
            }, childCount: 20),
          ),
        ],
      ),
    );
  }
}
