// import 'package:flutter/material.dart';
//
// class fouth extends StatefulWidget {
//   List<String> shayari;
//   int index;
//
//   fouth(this.shayari, this.index);
//
//   @override
//   State<fouth> createState() => _fouthState();
// }
//
// class _fouthState extends State<fouth> {
//   List<String> button = [
//     "Back Button",
//     "Text Color",
//     "Font",
//     "Text Size",
//     "Emoji",
//     "Share"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Container(
//             height: 600,
//             width: double.infinity,
//             color: Colors.green,
//             child: Text(
//               "${widget.shayari[widget.index]}",
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 40, color: Colors.black),
//             ),
//           ),
//           Spacer(),
//           Expanded(
//               child: Row(
//             children: [
//               Expanded(
//                   child: InkWell(onTap: () {
//                       if(button==1)
//                         {
//                           showBottomSheet( builder: (context)
//                         }
//                   },
//                     child: GridView.builder(
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 3,childAspectRatio: 7,mainAxisSpacing: 10,crossAxisSpacing: 10),
//                         itemCount: button.length,
//                         itemBuilder: (context, index) {
//                           return Container(
//                             height: 100,
//                             width: double.infinity,
//                             alignment: Alignment.center,
//                             color: Colors.blue,
//                             child: Text(
//                               "${button[index]}",
//                               style: TextStyle(fontSize: 20),
//                             ),
//                           );
//                         }),
//                   ))
//             ],
//           ))
//         ],
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';

class fouth extends StatefulWidget {
  List<String> shayari;
  int index;

  fouth(this.shayari, this.index);

  @override
  State<fouth> createState() => _fouthState();
}

class _fouthState extends State<fouth> {
  List<Color> l = [
    Colors.red,
    Colors.pinkAccent,
    Colors.green,
    Colors.grey,
    Colors.blue,
    Colors.yellow,
    Colors.brown,
    Colors.black,
    Colors.orange,
    Colors.limeAccent,
    Colors.greenAccent,
    Colors.indigo,
    Colors.tealAccent,
  ];
  List<Color> ll = [
    Colors.black,
    Colors.red,
    Colors.pinkAccent,
    Colors.green,
    Colors.grey,
    Colors.blue,
    Colors.yellow,
    Colors.brown,
    Colors.orange,
    Colors.limeAccent,
    Colors.greenAccent,
    Colors.indigo,
    Colors.tealAccent,
  ];
  int i = 0;
  int i1 = 0;
  int i2=0;
  double  textsize = 50;
  List<String> font=["family","family1","family2","family3","family4"];
  List<String> Emoji=["😀 😁 😆 😃 😍"," 😍 🥰 🤩 🥳 😘","😄 😁 😆 😅 😂 🤣","😋 😛 😝 😜 🤪","😱 😨 😰 😥 😓 "];
  int a=0;


  @override
  initState(){
    super.initState();
    createfolder();
  }
  String folderpath="";
  createfolder()
  async {
    String path = "storage/emulated/0/Download/Shayari";
    Directory directory = Directory(path);

  if(await directory.exists())
  {
      print("Already Exit.");
  }
  else
    {
      await directory.create();
      print("Created");
    }
    folderpath = directory.path;
  }
  GlobalKey _globalKey=GlobalKey();
  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary =
      _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary?;
      ui.Image image = await boundary!.toImage(pixelRatio: 3.0);
      ByteData? byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      print(pngBytes);
      print(bs64);
      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);
      return Future.value();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
      ),
      body:Column(
        children: [
          Expanded(child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ListView(children: [Container(
              height: 700,
              width: double.infinity,
              color: l[i],
              child: Text(
                "${Emoji[i2]}\n${widget.shayari[widget.index]}\n${Emoji[i2]}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: textsize, color: ll[i1],fontFamily: font[a]),
              ),
            ),],
            ),
          ),
          ),
      Expanded(child: Column(
        children: [
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.refresh,
                        size: 50,
                      )),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.zoom_out_map, size: 50))
                ],
              )),
          Expanded(
              child: Row(
                children: [
                  Spacer(),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                isDismissible: false,
                                context: context,
                                barrierColor: Colors.transparent,
                                builder: (context) {
                                  return Container(
                                    height: 500,
                                    color: Colors.white,
                                    margin: EdgeInsets.all(10),
                                    child: GridView.builder(
                                        gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 6,
                                            childAspectRatio: 1,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10),
                                        scrollDirection: Axis.vertical,
                                        itemCount: l.length,
                                        itemBuilder: (context, index) {
                                          return GridTile(
                                            child: InkWell(
                                              onTap: () {
                                                i = index;
                                                setState(() {});
                                              },
                                              child: Container(
                                                color: l[index],
                                              ),
                                            ),
                                          );
                                        }),
                                  );
                                });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Text("Back ground"),
                            //  margin: EdgeInsets.all(30),
                            // padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            color: Colors.blue,
                          )),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                isDismissible: false,
                                context: context,
                                barrierColor: Colors.transparent,
                                builder: (context) {
                                  return Container(
                                    height: 500,
                                    color: Colors.white,
                                    margin: EdgeInsets.all(10),
                                    child: GridView.builder(
                                        gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 6,
                                            childAspectRatio: 1,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10),
                                        scrollDirection: Axis.vertical,
                                        itemCount: ll.length,
                                        itemBuilder: (context, index) {
                                          return GridTile(
                                            child: InkWell(
                                              onTap: () {
                                                i1 = index;
                                                setState(() {});
                                              },
                                              child: Container(
                                                color: ll[index],
                                              ),
                                            ),
                                          );
                                        }),
                                  );
                                });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            color: Colors.transparent,
                            child: Text("Text Color"),
                          ),
                        ),
                      )),
                  Spacer(),
                  Expanded(
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {
                            _capturePng().then((value) async {
                              DateTime d = DateTime.now();
                              print(d);

                              String time="${d.year}${d.month}${d.day}${d.hour}${d.minute}${d.second}${d.millisecond}";
                              String imagepath ="${folderpath}/Image$time.jpg";

                              File file = new File(imagepath);
                              await file.create();
                              file.writeAsBytesSync(value);
                              Share.shareFiles([file.path],text: "Great pricture");
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            color: Colors.transparent,
                            child: Text("Share"),
                          ),
                        ),
                      )),
                  Spacer(),
                ],
              )),
          Expanded(
              child: Row(
                children: [
                  Spacer(),
                  Expanded(
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {
                          showModalBottomSheet(context: context, builder: (context){
                            return Container(
                              child: ListView.builder(itemCount: font.length,
                                  itemBuilder: (context,index){
                                return ListTile(title: Center(child: Text("Shayari",style: TextStyle(fontFamily: font[index]),),),
                                    onTap: () {

                                      setState((){
                                        a=index;
                                      });
                                    }
                                );
                              })
                            );
                          });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            //   margin: EdgeInsets.all(30),
                            // padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            color: Colors.transparent,
                            child: Text("Font"),
                          ),
                        ),
                      )),
                  Spacer(),
                  Expanded(
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(context: context, builder:(context){
                              return Container(
                                child: ListView.builder(itemCount: Emoji.length,itemBuilder:(context,index){
                                  return ListTile(title: Center(child: Text(Emoji[index]),),
                                  onTap: (){
                                    setState((){
                                      i2=index;
                                    });
                                  },
                                  );
                                }),
                              );
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            //   margin: EdgeInsets.all(30),
                            //  padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            color: Colors.transparent,
                            child: Text("Emoji"),
                          ),
                        ),
                      )),
                  Spacer(),
                  Expanded(
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(builder: (context) {
                              return Container(
                                height: 100,
                                child: StatefulBuilder(builder: (context, setState1) {
                                  return Slider(onChanged: (value) {
                                    textsize = value;
                                    setState1(() {

                                    });
                                    setState(() {});
                                  }, min: 10, max: 100, value: textsize,);
                                },),
                              );
                            }, context: context);
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            color: Colors.transparent,
                            child: Text("Text Size"),
                          ),
                        ),
                      )),
                  Spacer(),
                ],
              ))
        ],
      )),
          ],
        ),
      );
  }

}
