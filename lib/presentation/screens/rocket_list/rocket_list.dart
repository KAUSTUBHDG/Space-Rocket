import 'package:extraedge_assignment/domain/entities/temperature.dart';
import 'package:extraedge_assignment/presentation/screens/rocket_details/rocket_details.dart';
import 'package:extraedge_assignment/presentation/screens/rocket_list/riverpod/riverpod.dart';
import 'package:extraedge_assignment/presentation/screens/rocket_list/widget/custom_card.dart';
import 'package:extraedge_assignment/presentation/widgets/custom_error_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';

class RocketList extends StatelessWidget {
  const RocketList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rockets '),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final itemList = ref.watch(AppProviders.itemListProvider);

          return itemList.when(
            data: (data) {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final Temperatures item = data[index];
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => RocketDetailsScreen(
                                    id: data[index].id!,
                                  )));
                    },
                    title: CustomCard(
                      country: item.country ?? '',
                      engineCount: item.engines?.number.toString() ?? '',
                      name: item.name ?? '',
                      url: item.flickr_images?.last ?? '',
                    ),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => CustomErrorWidget(
              error: error,
              onPressed: () {
                ref.watch(AppProviders.itemListProvider);
              },
            ),
          );
        },
      ),
    );
  }
}
