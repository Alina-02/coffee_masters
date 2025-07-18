import 'package:coffee_masters/datamanager.dart';
import 'package:coffee_masters/pages/menupage.dart';
import 'package:coffee_masters/pages/offerspage.dart';
import 'package:coffee_masters/pages/orderpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Masters',
      theme: ThemeData(primaryColor: Colors.brown, primarySwatch: Colors.brown),
      home: const MyHomePage(),
    );
  }
}

class PersonName extends StatefulWidget {
  const PersonName({super.key});

  @override
  State<PersonName> createState() => _PersonNameState();
}

class _PersonNameState extends State<PersonName> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dataManager = DataManager();
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget currentWidgetPage = Text("!!!1");

    switch (selectedIndex) {
      case 0:
        currentWidgetPage = MenuPage(dataManager: dataManager);
        break;
      case 1:
        currentWidgetPage = OffersPage(dataManager: dataManager);
        break;
      case 2:
        currentWidgetPage = OrderPage(dataManager: dataManager);
        break;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(child: Image.asset("images/logo.png")),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (newIndex) {
          selectedIndex = newIndex;
        },
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.yellow.shade400,
        unselectedItemColor: Colors.brown.shade50,
        items: [
          BottomNavigationBarItem(label: "Menu", icon: Icon(Icons.coffee)),
          BottomNavigationBarItem(
            label: "Offers",
            icon: Icon(Icons.local_offer),
          ),
          BottomNavigationBarItem(
            label: "Order",
            icon: Icon(Icons.shopping_cart_checkout_outlined),
          ),
        ],
      ),
      body: currentWidgetPage,
    );
  }
}
