import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //  Imagen
          const Image(image: AssetImage('assets/basic_landscape.png')),
          //  Titulo
          const Title(),
          //  Button section
          const ButtonSection(),
          //  Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
                'Voluptate enim in est irure in ullamco deserunt sunt enim minim sint sunt. Aute commodo excepteur nulla ut nulla do. Id culpa aliquip id eiusmod pariatur.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Deserunt tempor enim cillum cillum.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Deserunt cillum cillum.',
              style: TextStyle(color: Colors.black45),
            )
          ],
        ),
        Expanded(child: Container()),
        const Icon(Icons.star, color: Colors.red),
        const Text('41')
      ]),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          //  Call
          CustomButton(icon: Icons.phone, text: 'Call'),
          //  Route
          CustomButton(icon: Icons.location_city, text: 'Route'),
          //  Share
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.lightBlue,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.lightBlue),
        )
      ],
    );
  }
}
