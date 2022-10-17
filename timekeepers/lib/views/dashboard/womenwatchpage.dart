import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Womenwatchpage extends StatelessWidget {
  const Womenwatchpage({super.key});

  @override
  Widget build(BuildContext context) {
return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.amber,
          child: Center(child: Text('Women product data')),
        );
      }

      // appBar: AppBar(title: Text('Men watch page')),
    );      // appBar: AppBar(title: Text('Women watch page')),
  }
}