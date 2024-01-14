import 'package:flutter/material.dart';

import 'customizable_dropdown_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextEditingController tt = TextEditingController();
    List<String> sel = [];
    return MaterialApp(
      title: 'Dropdown Demo',
      home: Scaffold(
          body: SafeArea(
              child: CustomizableDropDown(
        title: '',
        multiselect: false,
        items: [
          'shashi',
          'kant',
          'kaushik',
          'sharma',
          'custom'
          'drop',
          'down',
          'menu'
        ],
        onSelectionChange: (String) {},
        selectedItems: sel,
        textController: tt,
      ))),
    );
  }
}
