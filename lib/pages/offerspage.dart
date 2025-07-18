import 'package:coffee_masters/datamanager.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  final DataManager dataManager;

  const OffersPage({super.key, required this.dataManager});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 10 for free",
        ),
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 10 for free",
        ),
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 10 for free",
        ),
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 10 for free",
        ),
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 10 for free",
        ),
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 10 for free",
        ),
      ],
    );
  }
}

class Offer extends StatelessWidget {
  final String title;
  final String description;
  const Offer({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.amber.shade300,
          elevation: 7,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/background.png"),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      color: Colors.amber.shade50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          description,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
