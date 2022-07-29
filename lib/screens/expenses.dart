import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:home_page/custom/custom_divider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../custom/custom_list_tile.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas"),
        leading: IconButton(
          icon: Icon(MdiIcons.close),
          onPressed: () => Navigator.popAndPushNamed(context, "/BottomNavigation"),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                endIndent: 0,
                indent: 0,
                color: Colors.black.withAlpha(50),
              ),
              Padding(
                padding: const EdgeInsets.all(7),
                child: Container(
                  color: Colors.black87,
                  child: Image(
                    image: NetworkImage(
                        "https://blog.contabilista.com.br/uploads/editor/b826316f960aafb99d29c061e9889560.jpg?w=500&h=791&q=90"),
                    height: 130,
                    width: 170,
                  ),
                ),
              ),
              Flexible(
                child: TextFormField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "Descrição da despesa",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                  ),
                  maxLines: 5,
                  minLines: 1,
                ),
              ),
              Flexible(
                child: TextFormField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixText: "R\$",
                    hintText: "R\$ 0,00",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                  ),
                  maxLines: 5,
                  minLines: 1,
                ),
              ),
              CustomListTile(
                label: "Categoria da despesa",
                trailing: Icons.arrow_forward_ios,
                onTap: () => Navigator.of(context).pushNamed("/CategoryExpense"),
              ),
              CustomDivider(),
              CustomListTile(
                label: "Adicionar a projeto(s)",
                trailing: Icons.arrow_forward_ios,
                onTap: () => Navigator.of(context).pushNamed("/Projects"),
              ),
              CustomDivider(),
              CustomListTile(
                label: "Moeda",
                leading: Icons.euro_symbol,
                trailing: Icons.arrow_forward_ios,
                onTap: () => Navigator.of(context).pushNamed("/TypeOfCoin"),
              ),
              CustomDivider(),
              CustomListTile(
                label: "Data",
                leading: Icons.calendar_month,
                trailing: Icons.arrow_forward_ios,
                onTap: () {},
              ),
              CustomDivider(),
              CustomListTile(
                label: "Forma de Pagamento",
                leading: Icons.monetization_on,
                trailing: Icons.arrow_forward_ios,
                onTap: () {},
              ),
              CustomDivider(),
            ],
          )
        ],
      ),
      floatingActionButton: SpeedDial(
        spaceBetweenChildren: 10,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22),
        backgroundColor: Theme.of(context).colorScheme.primary,
        visible: true,
        curve: Curves.bounceIn,
        children: [
          SpeedDialChild(
            label: "QR Code",
            child: const Icon(Icons.qr_code),
            backgroundColor: Colors.deepOrange[400],
            onTap: () {},
          ),
          SpeedDialChild(
            label: "Código de barras",
            child: const Icon(Icons.photo_camera),
            backgroundColor: Colors.deepOrange[400],
            onTap: () {},
          )
        ],
      ),
    );
  }
}
