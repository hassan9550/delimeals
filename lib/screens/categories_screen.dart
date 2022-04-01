import 'package:flutter/material.dart';
import 'package:untitled5/widgets/category_item.dart';
import 'package:untitled5/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      // Color.fromRGBO(25, 90, 90, 1),
      // Color(0xff675432),
      Colors.white,
      appBar: AppBar(
        title: Text('Daily Meals'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          itemCount: Dummy_Data.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (BuildContext context, int index) => CategoryItem(
             id: Dummy_Data[index].id, color: Dummy_Data[index].color,  title: Dummy_Data[index].title, )),
    );
  }
}
