import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/cart.Dart';
import 'package:shopping_app/models/shoe.dart';
// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({
    super.key,
    required this.shoe,
    });

  @override
  State <CartItem> createState() =>  _CartItemState();
}

class  _CartItemState extends State <CartItem> {
  void removeItemFromCart(){
      //remove item from cart
      Provider.of<Cart>(context,listen:false).removeItemFromCart(widget.shoe);
    }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom:10),
      child:ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon: const Icon(Icons.delete), 
          onPressed: removeItemFromCart,),
      )
    );
    
    
  }
}
