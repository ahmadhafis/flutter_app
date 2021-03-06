// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key key
    }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> categories = [
    'Category 1',
    'Category 2',
    'Category 3',
  ];

  int clicked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories clicked: ' + clicked.toString()),
      ),
      body: Container(
        color: Theme.of(context).primaryColorDark,
        child: Center(
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  categories[index],
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => setState(() => clicked++),
              );
            },
          ),
        ),
      ),
    );
  }
}
