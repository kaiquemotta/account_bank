import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../themes/theme_colors.dart';
import '../content_division.dart';

class Investments extends StatefulWidget {
  const Investments({super.key});

  @override
  State<Investments> createState() => _InvestmentsState();
}

class _InvestmentsState extends State<Investments> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 0, left: 0, right: 80, top: 9),
          child: Text('Poupança e Investimentos',
              style: Theme.of(context).textTheme.titleMedium),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: GestureDetector(
              child: Column(
                children: [
                  Center(
                    child: AnimatedContainer(
                      width: selected ? 350.0 : 350.0,
                      height: selected ? 100.0 : 200.0,
                      alignment: selected
                          ? Alignment.center
                          : AlignmentDirectional.topCenter,
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      decoration: BoxDecoration(
                          boxShadow: kElevationToShadow[3],
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).cardColor),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.attach_money),
                              Text('Poupança'),
                              Padding(
                                padding: const EdgeInsets.only(left: 170),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        selected = !selected;
                                      });
                                    },
                                    icon: selected
                                        ? Icon(Icons.arrow_circle_down)
                                        : Icon(Icons.arrow_circle_up)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, left: 10, bottom: 30),
                                child: Text('Guarde seu dinheiro agora mesmo',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 0.5),
                                    )),
                              )
                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    top: 0,
                                  ),
                                  child: Text(
                                    'Valor total',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color:
                                          Color.fromRGBO(196, 186, 186, 0.986),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 0, bottom: 10),
                                  child: Text(
                                    'R\$ 1.100,00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (!selected)
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: ContentDivision(),
                            ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: Text('Informações Poupança'),
                                    content: Text(
                                        'Um teste de texto para poupança,Um teste de texto para poupançaUm teste de texto para poupançaUm teste de texto para poupançaUm teste de texto para poupançaUm teste de texto para poupança'),
                                  ),
                                );
                              },
                              child: Container(
                                child: Text(
                                  'Ver mais',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
