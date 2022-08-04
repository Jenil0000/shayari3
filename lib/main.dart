import 'package:flutter/material.dart';
import 'package:shayari3/second.dart';
import 'package:shayari3/splash.dart';

void main() {
  runApp(MaterialApp(
    home: splash(),
  ));
}

class shayari extends StatefulWidget {
  const shayari({Key? key}) : super(key: key);

  @override
  State<shayari> createState() => _shayariState();
}

class _shayariState extends State<shayari> {
  List<String> name = [
    "Funny Shayari",
    "Attitude Shayari",
    "Love Shayari",
    "Sad Shayari",
    "Friendship Shayari",
    "Timepass Shayari",
    "Waqt Shayari",
    "life Shayari",
    "Bewafa Shayari",
    "Happiness Shayari"
  ];
  List<String> image = [
    "myphota/cutesmail.jpg",
    "myphota/attitude.jpg",
    "myphota/love.jpg",
    "myphota/brokan.jpg",
    "myphota/dosti (2).jpg",
    "myphota/timepass.jpg",
    "myphota/time.jpg",
    "myphota/life.jpg",
    "myphota/bewafa.jpg",
    "myphota/book.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shayari"),
      ),
      body: InkWell(
        child: ListView.separated(
          itemCount: name.length,
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return second(name[index], image[index], index);
                  },
                ));
              },
              leading: Image.asset(
                image[index],
                height: 100,
                width: 100,
              ),
              title: Text(name[index]),
            );
          },
        ),
      ),
    );
  }
}
