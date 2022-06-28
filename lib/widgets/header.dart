import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        Text(
          'Eli\'s Wallet',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(boxShadow: AppColors.neumorpShadow, color: AppColors.primaryWhite, shape: BoxShape.circle),
            child: Stack(
              children: <Widget>[
                Center(child: Container(decoration: BoxDecoration(color: Colors.deepOrange, shape: BoxShape.circle))),
                Center(child: Container(margin: EdgeInsets.all(6), decoration: BoxDecoration(color: AppColors.primaryWhite, shape: BoxShape.circle))),
                Center(child: Icon(Icons.notifications))
              ],
            )),
      ]),
    );
  }
}
