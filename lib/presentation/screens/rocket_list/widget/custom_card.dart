import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.url,
      required this.name,
      required this.country,
      required this.engineCount});
  final String url;
  final String name;
  final String country;
  final String engineCount;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            child: Image.network(
              url,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Name: $name'),
          const SizedBox(
            height: 10,
          ),
          Text('country: $country'),
          const SizedBox(
            height: 10,
          ),
          Text('Engine Count: $engineCount'),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
