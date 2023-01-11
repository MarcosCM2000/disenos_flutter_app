import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.pie_chart_sharp, text: 'General'),
          _SingleCard(
              color: Colors.purple,
              icon: Icons.fire_truck_sharp,
              text: 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Color.fromRGBO(255, 153, 204, 1),
              icon: Icons.shopping_bag_sharp,
              text: 'Shopping'),
          _SingleCard(
              color: Colors.orangeAccent,
              icon: Icons.document_scanner_sharp,
              text: 'Bills'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.indigoAccent,
              icon: Icons.movie_creation_sharp,
              text: 'Entertainment'),
          _SingleCard(
              color: Colors.greenAccent,
              icon: Icons.food_bank_sharp,
              text: 'Grocery'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(
      {super.key, required this.color, required this.icon, required this.text});

  final Color color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 20),
          )
        ],
      ),
    );
  }
}
