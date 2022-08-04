
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari3/fouth.dart';
import 'package:shayari3/main.dart';

class three extends StatefulWidget {
  String name;
  List<String> shayari;
  int cnt;
  three(this.name,this.shayari,this.cnt);

  @override
  State<three> createState() => _threeState();
}

class _threeState extends State<three> {
  PageController pageController=PageController();


  @override
  void initState() {
    super.initState();


   pageController=PageController(initialPage: widget.cnt);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SafeArea(child: Column(
        children: [
          Container(
            height: 25,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text("${widget.cnt+1} /${widget.shayari.length}"),

          ),
          Expanded(
              child:PageView.builder(
                  onPageChanged: (value) {
                    print(value);
                    widget.cnt=value;
                    setState((){});
                  },
                  controller: pageController,
                  itemCount: widget.shayari.length,
                  itemBuilder: (context,index){
                return Container(

                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.green,
                  child: Text(
                    "${widget.shayari[widget.cnt]}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, color: Colors.black),
                  ),
                );
              })
          ),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {
              if(widget.cnt>0)
                {
                  widget.cnt--;
                  pageController.jumpToPage(widget.cnt);
                  setState(() {

                  });
                }
              }, icon: Icon(Icons.arrow_back_ios)),
              IconButton(onPressed: (){

                FlutterClipboard.copy(widget.shayari[widget.cnt]).then(( value ) =>

                Fluttertoast.showToast(
                    msg: "Copied!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 3,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                ));
              }, icon: Icon(Icons.copy)),
              IconButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return fouth(widget.shayari,widget.cnt);
                }));
              }, icon: Icon(Icons.edit)),
              IconButton(onPressed: (){
                Share.share('check out my website https://example.com',
                    subject: widget.name);

              }, icon: Icon(Icons.share)),
              IconButton(onPressed: (){
                if(widget.cnt< widget.shayari.length-1)
                {
                  widget.cnt++;
                  setState(() {

                  });
                }


              }, icon: Icon(Icons.arrow_forward_ios_outlined)),

            ],
          ))
        ],
      ),)
    );
  }
}
