import 'package:flutter/material.dart';
import 'package:home_page/custom/custom_list_tile.dart';

class CategoryExpense extends StatefulWidget {
  const CategoryExpense({Key? key}) : super(key: key);

  @override
  State<CategoryExpense> createState() => _CategoryExpenseState();
}

class _CategoryExpenseState extends State<CategoryExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categoria da despesa",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            CustomListTile(
              label: "Alimentação",
              onTap: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil("/Expenses", (route) => false),
            ),
            CustomListTile(
              label: "Hospedagem",
              onTap: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil("/Expenses", (route) => false),
            ),
            CustomListTile(
              label: "Estacionamento",
              onTap: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil("/Expenses", (route) => false),
            ),
            CustomListTile(
              label: "Abastecimento",
              onTap: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil("/Expenses", (route) => false),
            ),
            CustomListTile(
              label: "Outros",
              onTap: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil("/Expenses", (route) => false),
            ),
          ],
        ),
      ),
    );
  }
}
