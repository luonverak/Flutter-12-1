import 'package:flutter/material.dart';

import '../model/cart_item.dart';

Widget itemCart(CartItem cartItem) {
  return Card(
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(cartItem.icon),
      ),
      title: Text(cartItem.title),
      subtitle: Text(cartItem.subtitle),
    ),
  );
}
