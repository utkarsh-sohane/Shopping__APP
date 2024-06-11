import 'package:flutter/material.dart';
import 'shoe.dart';
class Cart extends ChangeNotifier{
  
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Shoe',
      price: '23600',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/nike_shoe.png',
    ),
    Shoe(
      name: 'Air Black',
      price: '25000',
      description: 'One of the best shoes you will ever see',
      imagePath: 'lib/images/airBlack.png',
    ),
    Shoe(
      name: 'Air Max',
      price: '28000',
      description: 'Celebrities choice',
      imagePath: 'lib/images/air-max.png',
    ),
    Shoe(
      name: 'Air Force',
      price: '30000',
      description: 'College students choice and affordable',
      imagePath: 'lib/images/air-force.png',
    ),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  } 
  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //aDD items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  //remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}