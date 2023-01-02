import 'package:flutter/material.dart';
import 'package:flutter_application_29/black_button.dart';
import 'package:flutter_application_29/white.dart';

class TheMainPage extends StatefulWidget {
  const TheMainPage({Key? key}) : super(key: key);

  @override
  _TheMainPageState createState() => _TheMainPageState();
}

class _TheMainPageState extends State<TheMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Flutter Piano'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'do re mi fa ...',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        whitebutton(nameNote: 'do'),
                        whitebutton(nameNote: 're'),
                        whitebutton(nameNote: 'mi'),
                        whitebutton(nameNote: 'fa'),
                        whitebutton(nameNote: 'lya'),
                        whitebutton(nameNote: 'si'),
                        whitebutton(nameNote: 'sol'),
                        whitebutton(nameNote: 'do2'),
                      ],
                    ),
                    Positioned(
                      left: 50.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        children: const [
                          hahaha(nameNote: 'do'),
                          hahaha(nameNote: 're'),
                          hahaha(
                            visible: false,
                            nameNote: 'mi',
                          ),
                          hahaha(nameNote: 'fa'),
                          hahaha(nameNote: 'sol'),
                          hahaha(nameNote: 'lya'),
                          hahaha(nameNote: 'si'),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
