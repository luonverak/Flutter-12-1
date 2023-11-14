import 'package:demo2/model/score.dart';
import 'package:flutter/material.dart';

import '../model/cart_item.dart';
import '../widget/component.dart';
import '../widget/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text(
            'User Setting',
            style: TextStyle(
              fontFamily: 'Roboto2',
              fontSize: 35,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const Positioned(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('asset/image/user.jpeg'),
                    ),
                    title: Text(
                      'Luon Verak',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Roboto3',
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          for (Map map in list)
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: Checkbox.width),
                              child: Column(
                                children: [
                                  Text(
                                    '${map['point']}',
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    '${map['option']}',
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ComponentCustom(
                iconData: Icons.attach_money,
                text: 'Wallet',
              ),
              ComponentCustom(
                iconData: Icons.wallet_giftcard,
                text: 'Delivery',
              ),
              ComponentCustom(
                iconData: Icons.message_outlined,
                text: 'Message',
              ),
              ComponentCustom(
                iconData: Icons.severe_cold_rounded,
                text: 'Service',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listCartItem.length,
                itemBuilder: (context, index) => itemCart(listCartItem[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
