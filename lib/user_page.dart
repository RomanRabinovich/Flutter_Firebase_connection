import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final controllerName = TextEditingController();
  final controllerAge = TextEditingController();
  final controllerDate = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(  
      title: Text('Add User'),
    ),
    body: ListView(
      padding: EdgeInsets.all(16),
      children: <Widget>[
        TextField(
          controller: controllerName,
          decoration: decoration('Name'),
        ),
        const SizedBox(height: 24),
        TextField(
          controller: controllerAge,
          decoration: decoration('Age'),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 24),
        DateTimeField(
          controller: controllerDate,
          decoration: decoration('Birthday'),
          format: DateFormat('yyyy-MM-dd'),
          onShowPicker: (context, currentValue) => 
            context: context,
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
            initialDate: currentValue ?? DateTime.n
            

        ),
      ],
    ),
  );
}
