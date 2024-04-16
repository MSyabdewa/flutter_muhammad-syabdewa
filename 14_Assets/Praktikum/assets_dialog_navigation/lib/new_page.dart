import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String selectedImage;

  const NewPage({super.key, required this.selectedImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
        child: Image.network(selectedImage),
      ),
    );
  }
}
