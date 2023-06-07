import 'package:extraedge_assignment/domain/entities/diameter.dart';
import 'package:extraedge_assignment/presentation/screens/rocket_details/riverpod/rocket_details_riverpod.dart';
import 'package:extraedge_assignment/presentation/screens/rocket_details/widget/rocket_detail_card_widget.dart';
import 'package:extraedge_assignment/presentation/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RocketDetailsScreen extends StatelessWidget {
  const RocketDetailsScreen({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rocket Details'),
      ),
      body: SingleChildScrollView(
        child: Consumer(
          builder: (context, ref, child) {
            final itemList =
                ref.watch(RocketDetailsAppProviders.itemListProvider(id));

            return itemList.when(
              data: (data) {
                return RocketCardDetailWidget(
                  cost: data.costPerLaunch ?? 0,
                  description: data.description ?? '',
                  diameter: data.diameter ?? Diameter(),
                  height: data.height ?? Diameter(),
                  images: data.flickr_images ?? [],
                  link: data.wikipedia ?? '',
                  name: data.name ?? '',
                  status: data.active ?? false,
                  successPercent: data.successRatePct ?? 0,
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => CustomErrorWidget(
                error: error,
                onPressed: () {
                  ref.watch(RocketDetailsAppProviders.itemListProvider(id));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
