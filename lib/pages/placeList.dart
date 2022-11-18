import 'package:flutter/material.dart';

class PlaceList extends StatefulWidget {
  const PlaceList({Key? key}) : super(key: key);

  @override
  State<PlaceList> createState() => _PlaceListState();
}

class _PlaceListState extends State<PlaceList> {
  List data = [
    {
      "image":
          "https://hippie-inheels.com/wp-content/uploads/2018/03/taj-mahal-places-to-visit-in-india-1024x678.jpg",
      "name": "Taj mahal",
    },
    {
      "image":"https://images.unsplash.com/photo-1564594736624-def7a10ab047?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80",
      "name": "Paris",
    },
    {
      "image":"https://img.traveltriangle.com/blog/wp-content/uploads/2019/07/Bangkok-cover_11th-Mar.jpg",
      "name": "bangkok thailand",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                ///image
                Container(
                  height: 250,
                  width: 180,
                  color: Colors.grey.shade200,
                  child: Image.network(
                    data[index]["image"],
                    fit: BoxFit.cover,
                  ),
                ),

                ///background gradient
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                        colors: [
                          Colors.black,
                          Colors.black12,
                        ],
                      ),
                    ),
                  ),
                ),

                ///
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Text(
                    data[index]["name"],
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}
