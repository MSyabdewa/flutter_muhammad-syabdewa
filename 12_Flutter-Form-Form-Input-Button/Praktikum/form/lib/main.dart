import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  List<Map<String, String>> _contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Icon(Icons.person, size: 50),
                  SizedBox(height: 24),
                  Text(
                    'Create New Contacts',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 14),
                  Text(
                    'Please fill out the form below:',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Insert Your Name',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Color(0xFFE7E0EC), // Warna latar belakang form
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: '+62 ..',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Color(0xFFE7E0EC), // Warna latar belakang form
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end, // Posisi tombol ke kanan
              children: [
                ElevatedButton(
                  onPressed: () {
                    String name = _nameController.text;
                    String phoneNumber = _phoneController.text;
                    setState(() {
                      _contacts.add({'name': name, 'phoneNumber': phoneNumber});
                    });
                    _nameController.clear();
                    _phoneController.clear();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFF6750A4)), // Warna latar belakang tombol
                  ),
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white), // Warna teks tombol
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              'List Contacts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: _contacts.length,
                itemBuilder: (context, index) {
                  final contact = _contacts[index];
                  return ListTile(
                    title: Text(contact['name'] ?? ''),
                    subtitle: Text(contact['phoneNumber'] ?? ''),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            _showEditDialog(context, index);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            _showDeleteDialog(context, index);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) {
        String newName = _contacts[index]['name'] ?? '';
        String newPhoneNumber = _contacts[index]['phoneNumber'] ?? '';
        return AlertDialog(
          title: Text('Edit Contact'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: TextEditingController(text: newName),
                onChanged: (value) {
                  newName = value;
                },
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: TextEditingController(text: newPhoneNumber),
                onChanged: (value) {
                  newPhoneNumber = value;
                },
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _contacts[index]['name'] = newName;
                  _contacts[index]['phoneNumber'] = newPhoneNumber;
                });
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete Contact'),
          content: Text('Are you sure you want to delete this contact?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _contacts.removeAt(index);
                });
                Navigator.pop(context);
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}
