import 'package:flutter/material.dart';
import 'package:ui_testing_project/pages/form_picker_page.dart';
import 'package:ui_testing_project/pages/to_do_list_page.dart';
import 'home_page.dart';
import 'pages/contact_pages/contact_page.dart';
import 'routes_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      initialRoute: RoutesNavigation().homePage,
      routes: {
        RoutesNavigation().homePage: (_) => const HomePage(),
        RoutesNavigation().contactPage: (_) => const ContactPage(),
        RoutesNavigation().formPickerPage: (_) => const FormPickerPage(),
        RoutesNavigation().toDoListPage: (_) => const ToDoListPage(),
      },
    );
  }
}
