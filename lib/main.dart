import 'package:flutter/material.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color appBarColor = Color.fromARGB(255, 117, 163, 201);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              color: Color.fromARGB(255, 117, 163, 201),
              child: Text('Gráfico'),
            ),
          ),
          Card(
            child: Text('Lista de transações'),
          )
        ],
      )
    );
  }
}