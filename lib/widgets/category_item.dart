import 'package:flutter/material.dart';
import 'package:untitled5/screens/categories_meal_screen.dart';
import 'package:untitled5/models/category.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({Key? key,required this.id, required this.color, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.orange,
      borderRadius: BorderRadius.circular(15),
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoriesMealScreen(categoryId: id, categoryTitle: title)));
        // Navigator.pushNamed(context, '/categories-meal-screen',
        // arguments: {
        //   'id': id,
        //   'title': title
        // }
        // );
        Navigator.pushNamed(context, CategoriesMealScreen.routeName,
            arguments: {
              'id': id,
              'title': title
            }
        );
      },
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              color.withOpacity(0.5),
              // color2.withOpacity(0.5),
              color
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Text(title,
            style: GoogleFonts.quicksand(
              textStyle:
                  TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 24),
            )
            // TextStyle(
            //   // fontFamily: '',
            //   fontWeight: FontWeight.bold
            // ),
            ),
      ),
    );
  }
}
