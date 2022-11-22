import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({super.key});

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  @override
  Widget build(BuildContext context) {
    print("Edit_Product Page");
    return Scaffold(
      appBar: AppBar(title: Text('Edit product')),
      body: Form(
        child: ListView(children: [
          Text('hii')
          // TextFormField(autocorrect: ,)
        ]),
      ),
    );
  }
}
