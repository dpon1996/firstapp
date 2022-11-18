import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List data = [
    {
      "image":
          "https://i.tribune.com.pk/media/images/1983392-hrithik-1559203633/1983392-hrithik-1559203633.jpeg",
      "name": "Hrithik roshan",
    },
    {
      "image":
          "https://w0.peakpx.com/wallpaper/622/475/HD-wallpaper-rashmika-actress-beautiful-cute-kannada-rashmika-mandana-tollywood-tollywood-actress-thumbnail.jpg",
      "name": "Rashmika mandana",
    },
    {
      "image":
          "https://nationaltoday.com/wp-content/uploads/2022/05/107-Johnny-Depp.jpg",
      "name": "Johnny Depp",
    },
    {
      "image":
          "https://i.pinimg.com/564x/31/ff/3a/31ff3ad2a981370cb24b4e6a40f0ba43--robert-downey-jr-perfect-man.jpg",
      "name": "Robert downey",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            backgroundImage: NetworkImage(
              data[index]["image"],
            ),
          ),
          title: Text(data[index]["name"]),
        );
      },
    );
  }
}
