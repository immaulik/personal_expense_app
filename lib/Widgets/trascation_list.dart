import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/trascation.dart';

import 'package:velocity_x/velocity_x.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deletetx;
  TransactionList(this.transactions, this.deletetx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: transactions.isEmpty
          ? LayoutBuilder(
              builder: (context, constraints) {
                return Column(children: [
                  "No Trascation added yet.".text.xl.bold.make(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.6,
                    child: Image.network(
                        "https://cdn4.iconfinder.com/data/icons/aiga-symbol-signs/464/aiga_waiting_room-256.png"),
                  )
                ]);
              },
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                          padding: EdgeInsets.all(6),
                          child: '\$${transactions[index].amount}'.text.make()),
                    ),
                    title: transactions[index].title.text.bold.make(),
                    subtitle: DateFormat.yMMMd()
                        .format(transactions[index].date)
                        .toString()
                        .text
                        .make(),
                    trailing: MediaQuery.of(context).size.width > 360
                        ? FlatButton.icon(
                            onPressed: () => deletetx(transactions[index].id),
                            icon: Icon(Icons.delete),
                            label: Text('Delete'),
                            textColor: Theme.of(context).errorColor,
                          )
                        : IconButton(
                            icon: Icon(Icons.delete),
                            color: Theme.of(context).errorColor,
                            onPressed: () => deletetx(transactions[index].id),
                          ),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
