import 'package:flutter/material.dart';
import 'package:walletui/data.dart';
import 'package:walletui/widgets/cardsSection.dart';
import 'package:walletui/widgets/expenses.dart';
import 'package:walletui/widgets/header.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Cicular'),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryWhite,
        body: Column(children: <Widget>[
          SizedBox(height: 20),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection()),
        ]));
  }
}
