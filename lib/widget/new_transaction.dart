import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaksi;
  final titleController = TextEditingController();
  final amountCOntroller = TextEditingController();

  NewTransaction(this.addTransaksi);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountCOntroller.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTransaksi(
      enteredTitle,
      enteredAmount,
    );
  }

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
                onSubmitted: (_) => submitData(),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountCOntroller,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submitData(),
              ),
              FlatButton(
                onPressed: submitData,
                child: Text('Add Transactions'),
                textColor: Colors.purple,
              ),
            ],
          ),
        ));
  }
}
