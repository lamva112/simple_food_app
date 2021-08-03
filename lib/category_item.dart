import 'package:flutter/material.dart';
import 'package:foodapp/food_page.dart';
import 'package:foodapp/models/category.dart';
import 'food_page.dart';

class CategoryItem extends StatelessWidget{
  Category category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color _color = this.category.color;
    return InkWell(
      onTap: (){
        print('tapped to category: ${this.category.content}');
        /*Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => FoodsPage(category: this.category,)
            ));*/
        Navigator.pushNamed(context, FoodsPage.routeName, arguments: {'category': category});
      },
      splashColor: Colors.deepOrange,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this.category.content,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _color.withOpacity(0.8),
              _color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          color: _color,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

}