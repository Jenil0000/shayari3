import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'main.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
  super.initState();
     gonext();
  }
  gonext()
  async
  {
    // var status = await Permission.storage.status;
    // var status1 = await Permission.camera.status;
    // if(status.isDenied || status1.isDenied)
    //   {
    //     await[Permission.storage,Permission.camera].request();
    //   }
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return shayari();
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Shayari....."),)
    );
  }


}
