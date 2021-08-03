import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/fake_date.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/models/food.dart';
import 'detail_food_page.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  Category category;
  FoodsPage({this.category});
  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];
    List<Food> foods = FAKE_FOODS.where((food) => food.categoryId == this.category.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Foods from ${category.content}'),
      ),
      body: Center(
        child: Center(
          child: foods.length > 0 ? ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index){
              Food food = foods[index];
              return InkWell(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailFoodPage(food: food),
                      )
                  );
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ClipRect(
                        clipBehavior: Clip.hardEdge,
                        child: Center(
                          child: FadeInImage.assetNetwork(
                              placeholder: 'assets/images/loading.gif',
                              image: food.urlImage
                          ),
                        ),
                      ),
                    ),
                    Positioned(top: 30, left: 30,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white,width: 2)
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.timer, color: Colors.white,size: 25,),
                            Text('${food.duration.inMinutes} minutes',
                              style: TextStyle(fontSize: 22, color: Colors.white),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ):
              Text('Food bo found',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        ),
       ),
      );
  }

}
