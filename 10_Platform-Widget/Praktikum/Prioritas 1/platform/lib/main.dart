import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark().copyWith(
        // Menggunakan dark theme secara keseluruhan
        colorScheme: ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Map<String, String>> contacts = [
    {'name': 'Dewa', 'phoneNumber': '0812-7766-7765'},
    {'name': 'Dewi', 'phoneNumber': '0812-7766-7765'},
    {'name': 'Dewo', 'phoneNumber': '0812-7766-7765'},
    {'name': 'Dewa', 'phoneNumber': '0812-7766-7765'},
    {'name': 'Dewi', 'phoneNumber': '0812-7766-7765'},
    {'name': 'Dewo', 'phoneNumber': '0812-7766-7765'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Material App',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: SizedBox.shrink(),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            for (var contact in contacts)
              ListTile(
                leading: CircleAvatar(
                  child: Text(contact['name']?[0] ?? ''),
                ),
                title: Text(contact['name'] ?? ''),
                onTap: () {
                  setState(() {
                    _selectedIndex = contacts.indexOf(contact);
                  });
                  Navigator.pop(context);
                },
              ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              child:
                  Text(contact['name']?[0] ?? ''), // Mengambil huruf awal nama
            ),
            title: Text(contact['name'] ?? ''),
            subtitle: Text(contact['phoneNumber'] ?? ''),
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
