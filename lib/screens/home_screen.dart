import 'package:flutter/material.dart';

import 'package:disenos_flutter_app/widgets/background.dart';
import 'package:disenos_flutter_app/widgets/card_table.dart';
import 'package:disenos_flutter_app/widgets/custom_bottom_navigation.dart';
import 'package:disenos_flutter_app/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [BackGround(), const _HomeBody()]),
      bottomNavigationBar: const CustomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //  Titulos
          PageTitle(),
          //  Card table
          CardTable()
        ],
      ),
    );
  }
}
