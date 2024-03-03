import 'package:flutter/material.dart';
import 'models/transaction.dart';

void main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color appBarColor = Color.fromARGB(255, 117, 163, 201);
    final DateTime currentDate = DateTime.now();

    final List<Transaction> _transactions = [
      Transaction(
        id: 't1',
        title: 'Novo Tênis de Corrida',
        value: 310.76,
        date: currentDate,
      ),
      Transaction(
        id: 't2',
        title: 'Conta de Luz',
        value: 211.30,
        date: currentDate,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Card(
              color: Color.fromARGB(255, 117, 163, 201),
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              /*.map(tr) vai percorrer cada elemento da lista e retornar um novo elemento
              na lista, que será um Card com o título da transação*/
              return Card(
                child: Text(tr.title),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
