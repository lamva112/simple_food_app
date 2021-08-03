import 'package:flutter/material.dart';
import './models/category.dart';
import './models/food.dart';
const FAKE_CATEGORIES = const [
  Category(id: 1, content: 'japanese\'Foods',color: Colors.deepOrange),
  Category(id: 2, content: 'pizza',color: Colors.teal),
  Category(id: 3, content: 'humburgers',color: Colors.amberAccent),
  Category(id: 4, content: 'banh mi',color: Colors.pink),
  Category(id: 5, content: 'beef steak',color: Colors.blue),
  Category(id: 6, content: 'Spaghetti',color: Colors.blueGrey),
  Category(id: 7, content: 'Cheese biscuits',color: Colors.deepPurple),
  Category(id: 8, content: 'Fish and chips',color: Colors.purple),
  Category(id: 9, content: 'Hot pot',color: Colors.lightGreen),
  Category(id: 10, content: 'Toast',color: Colors.pinkAccent),
  Category(id: 11, content: 'Paté',color: Colors.cyan),
  Category(id: 12, content: 'Apple pie',color: Colors.deepOrange),
  Category(id: 13, content: 'Scampi',color: Colors.cyanAccent),
  Category(id: 14, content: 'Curry',color: Colors.red),
];

var FAKE_FOODS = [
  //array of food's objects
  Food(
      name: "sushi - 寿司",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg",
      duration: Duration(minutes:25),
      complexity: Complexity.Medium,
      ingredients: ['Sushi-meshi', 'Nori', 'Condiments'],
      categoryId: 1),
  Food(
      name: "Pizza tonda",
      urlImage: "https://www.angelopo.com/filestore/images/pizza-tonda.jpg",
      duration: Duration(minutes:15),
      complexity: Complexity.Hard,
      ingredients: ['Tomato sauce','Fontina cheese','Pepperoni','Onions','Mushrooms','pepperoncini'],
      categoryId: 2),
  Food(
      name: "Makizushi",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
      complexity: Complexity.Simple,
      duration: Duration(minutes:20),
      ingredients: ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      categoryId: 1),
  Food(
      name: "Tempura",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Simple,
      ingredients: ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      categoryId: 1),
  Food(
      name: "Neapolitan pizza",
      urlImage: "https://img-global.cpcdn.com/recipes/7f1a5380090f6300/1280x1280sq70/photo.jpg",
      duration: Duration(minutes:20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      categoryId: 2),
  Food(
      name: "Sashimi",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Sashimi_-_Tokyo_-_Japan.jpg/2880px-Sashimi_-_Tokyo_-_Japan.jpg",
      duration: Duration(hours: 1, minutes: 5),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      categoryId: 1),
  Food(
      name: "Homemade Humburger",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/5/58/Homemade_hamburger.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      ingredients: ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      categoryId: 3),
];