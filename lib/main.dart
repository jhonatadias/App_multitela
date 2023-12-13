import 'package:flutter/material.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';
import 'pages/app.dart';
import 'pages/physics_card_drag_demo.dart';
import 'pages/sunflower.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barra de Navegação',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
  //Essa classe está manipulando e configurando
  // a classe de baixo
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  //Essa classe está sendo manipulada por outra classe
  // essa manipulação gera a dinamica da mudança das telas

  final List<Widget> _pages = [
    Page2(),
    Page3(),
    Sunflower(),
    PhysicsCardDragDemo(),
    App(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Navegação'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'app',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Página 2',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Página 3',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'PhysicsCardDragDemo',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: 'Sunflower',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
