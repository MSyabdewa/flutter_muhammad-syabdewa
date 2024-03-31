import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hallo Alterra'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          textAlign:
              TextAlign.center, // Mengatur teks pada AppBar menjadi tengah
        ),
        centerTitle: true, // Mengatur posisi judul AppBar menjadi tengah
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle), // Icon profil
            onPressed: () {
              // Aksi yang akan dilakukan saat ikon profil ditekan
              print('Profil ditekan');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Nama saya adalah Muhammad Syabdewa',
            ),
          ],
        ),
      ),
    );
  }
}
