import 'package:firstapp/pages/placeList.dart';
import 'package:firstapp/pages/userList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),

            ///top
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  ///profile image
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage: const NetworkImage(
                      "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg?fit=640,427",
                    ),
                  ),
                  const Spacer(),

                  ///icon
                  const Icon(Icons.sort),
                ],
              ),
            ),

            ///
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///title
                    const Text(
                      "Discover\nworld with us!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    const SizedBox(height: 20),

                    ///search
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey.shade200,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 8),

                          ///text
                          const Expanded(
                            child: Text(
                              "Search something...",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),

                          ///icon
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    ///place listing
                    const SizedBox(height: 8),
                    const PlaceList(),
                    const SizedBox(height: 25),

                    ///
                    const Text(
                      "User List",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),

                    const UserList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
