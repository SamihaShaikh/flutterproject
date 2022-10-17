import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Kidswatchpage extends StatelessWidget {
  const Kidswatchpage({super.key});

  @override
  Widget build(BuildContext context) {
      // appBar: AppBar(title: Text('Kids watch page')),
      return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.amber,
          child: Center(child: Text('Kids product data')),
        );
      }

      // appBar: AppBar(title: Text('Men watch page')),
    );
  }
}