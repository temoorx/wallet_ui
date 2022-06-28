import 'package:flutter/material.dart';
import 'package:walletui/data.dart';
import 'package:walletui/widgets/pieCharts.dart';

class ExpenseSection extends StatelessWidget {
  const ExpenseSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Container(margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10), child: Text('Expenses', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
      Row(
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: AppColors.expenses
                        .map((value) => Row(children: <Widget>[
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: AppColors.pieColors[AppColors.expenses.indexOf(value)],
                              ),
                              SizedBox(width: 5),
                              Text(value['name'], style: TextStyle(fontSize: 18)),
                            ]))
                        .toList()),
              )),
          Expanded(flex: 3, child: PieChart()),
        ],
      )
    ]);
  }
}
