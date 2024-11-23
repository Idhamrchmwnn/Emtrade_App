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
      body: Column(
        children: [
          SearchField(
            onChanged: (value) {
              print('Search query: $value');
            },
            onSubmitted: (value) {
              print('Submitted query: $value');
            },
          ),
          Container(
            width: 100,
            height: 100,
            color: AppColors.colorgrey,
          ),
          Card(
            elevation: 2,
            color: AppColors.colorgrey,
            child: Row(
              children: [
                Container(
                  width: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
