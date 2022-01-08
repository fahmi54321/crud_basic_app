import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaksi;
  final titleController = TextEditingController();
  final amountCOntroller = TextEditingController();

  NewTransaction(this.addTransaksi);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountCOntroller,
              ),
              FlatButton(
                onPressed: () {
                  addTransaksi(
                    titleController.text,
                    double.parse(amountCOntroller.text),
                  );
                },
                child: Text('Add Transactions'),
                textColor: Colors.purple,
              ),
            ],
          ),
        ));
  }
}
