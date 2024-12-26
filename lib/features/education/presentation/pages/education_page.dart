import 'package:emtrade_app/core/constants/constants.dart';
import 'package:emtrade_app/features/widgets/search_field.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
        centerTitle: false,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.filter))],
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SearchField(
              onChanged: (value) {
                print('Search query: $value');
              },
              onSubmitted: (value) {
                print('Submitted query: $value');
              },
            ),
          ],
        ),
      ),
    );
  }
}
