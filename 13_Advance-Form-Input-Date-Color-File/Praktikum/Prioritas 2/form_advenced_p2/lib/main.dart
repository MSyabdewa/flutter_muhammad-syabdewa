import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactPage(),
    );
  }
}

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final List<Map<String, String>> _contacts = [];
  DateTime _dueDate = DateTime.now();
  final _currentDate = DateTime.now();
  Color _currentColor = Colors.orange;
  String? _fileName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
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
            const SizedBox(height: 24),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Insert Your Name',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Color(0xFFE7E0EC),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: '+62 ..',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Color(0xFFE7E0EC),
              ),
            ),
            const SizedBox(height: 16),
            buildDatePicker(context),
            const SizedBox(height: 16),
            buildColorPicker(context),
            const SizedBox(height: 16),
            buildFilePicker(),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end, // Posisi tombol ke kanan
              children: [
                ElevatedButton(
                  onPressed: () {
                    String name = _nameController.text;
                    String phoneNumber = _phoneController.text;
                    String formattedDate =
                        DateFormat('dd-MM-yyyy').format(_dueDate);

                    setState(() {
                      _contacts.add({
                        'name': name,
                        'phoneNumber': phoneNumber,
                        'date': formattedDate,
                        'color': _currentColor.toString(),
                        'fileName': _fileName ?? 'No file selected',
                      });
                    });
                    _nameController.clear();
                    _phoneController.clear();
                    _fileName = null; // Reset nama file setelah ditambahkan
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF6750A4)),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white), // Warna teks tombol
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'List Contacts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: _contacts.length,
                itemBuilder: (context, index) {
                  final contact = _contacts[index];
                  return ListTile(
                    title: Text(contact['name'] ?? ''),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(contact['phoneNumber'] ?? ''),
                        Text('Date: ${contact['date'] ?? ''}'),
                        Text('Color: ${contact['color'] ?? ''}'),
                        Text('File Name: ${contact['fileName'] ?? ''}'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            _showEditDialog(context, index);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
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

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(_currentDate.year + 5),
                );

                setState(() {
                  if (selectedDate != null) {
                    _dueDate = selectedDate;
                  }
                });
              },
              child: const Text("select"),
            ),
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(_dueDate))
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: _currentColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
            child: const Text('Pick Color'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick Your Color'),
                    content: BlockPicker(
                      pickerColor: _currentColor,
                      onColorChanged: (color) {
                        setState(() {
                          _currentColor = color;
                        });
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }

  void _showEditDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) {
        String newName = _contacts[index]['name'] ?? '';
        String newPhoneNumber = _contacts[index]['phoneNumber'] ?? '';
        return AlertDialog(
          title: const Text('Edit Contact'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: TextEditingController(text: newName),
                onChanged: (value) {
                  newName = value;
                },
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: TextEditingController(text: newPhoneNumber),
                onChanged: (value) {
                  newPhoneNumber = value;
                },
                decoration: const InputDecoration(labelText: 'Phone Number'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _contacts[index]['name'] = newName;
                  _contacts[index]['phoneNumber'] = newPhoneNumber;
                });
                Navigator.pop(context);
              },
              child: const Text('Save'),
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
          title: const Text('Delete Contact'),
          content: const Text('Are you sure you want to delete this contact?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _contacts.removeAt(index);
                });
                Navigator.pop(context);
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}

Widget buildFilePicker() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('Pick Files'),
      const SizedBox(
        height: 10,
      ),
      Center(
        child: ElevatedButton(
          child: const Text('Pick and Open File'),
          onPressed: () {
            _pickFile();
          },
        ),
      )
    ],
  );
}

void _pickFile() async {
  final result = await FilePicker.platform.pickFiles();
  if (result == null) return;

  final file = result.files.first;
  _openFile(file);
}

void _openFile(PlatformFile file) {
  OpenFile.open(file.path);
}
