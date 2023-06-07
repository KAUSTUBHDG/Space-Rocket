import 'package:carousel_slider/carousel_slider.dart';
import 'package:extraedge_assignment/domain/entities/diameter.dart';
import 'package:extraedge_assignment/presentation/screens/rocket_details/widget/web_container.dart';
import 'package:flutter/material.dart';

class RocketCardDetailWidget extends StatelessWidget {
  const RocketCardDetailWidget(
      {super.key,
      required this.name,
      required this.images,
      required this.status,
      required this.cost,
      required this.successPercent,
      required this.description,
      required this.link,
      required this.height,
      required this.diameter});

  final String name;
  final List<String> images;
  final bool status;
  final int cost;
  final int successPercent;
  final String description;
  final String link;
  final Diameter height;
  final Diameter diameter;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (name.isNotEmpty)
            const SizedBox(
              height: 10,
            ),
          if (name.isNotEmpty) Text('Name: $name'),
          if (images.isNotEmpty)
            const SizedBox(
              height: 10,
            ),
          if (images.isNotEmpty)
            SizedBox(
              height: 200,
              child: CarouselSlider(
                  items: images
                      .map((item) => Container(
                            child: Center(
                                child: Image.network(item,
                                    fit: BoxFit.cover, width: 1000)),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
          const SizedBox(
            height: 10,
          ),
          Text(status == true ? 'Status: Active' : 'Status: Inactive'),
          const SizedBox(
            height: 10,
          ),
          Text('Cost: $cost'),
          const SizedBox(
            height: 10,
          ),
          Text('Success Percentage: $successPercent'),
          if (description.isNotEmpty)
            const SizedBox(
              height: 10,
            ),
          if (description.isNotEmpty) Text('Description:\n$description'),
          if (link.isNotEmpty)
            const SizedBox(
              height: 10,
            ),
          if (link.isNotEmpty)
            TextButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewContainer(
                      url: link,
                    ),
                  ),
                );
              },
              child: Text('Wikipedia Link: $link'),
            ),
          const SizedBox(
            height: 10,
          ),
          Text('Height: ${height.feet}'),
          const SizedBox(
            height: 10,
          ),
          Text('Diameter: ${diameter.meters}'),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
