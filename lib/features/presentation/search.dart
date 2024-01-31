import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  List<String> name = [
    'Lorem Ipsum',
    'Chocolate',
    'Strawberry',
    'Noodle',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Text("Lorem Ipsum"),
          ),
          SizedBox(height: 15),
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.purple, // Warna latar belakang container
                    borderRadius: BorderRadius.circular(8.0), // Border radius
                    border: Border.all(
                        color: Colors.white, width: 2.0), // Outline border
                  ),
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    name[index],
                    style: TextStyle(color: Colors.white), // Warna teks
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
