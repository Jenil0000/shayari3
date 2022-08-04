import 'package:flutter/material.dart';
import 'package:shayari3/three.dart';

class second extends StatefulWidget {
  String name;
  String image;
  int index1;

  second(this.name, this.image, this.index1);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List<String> shayari = [];

  @override
  void initState() {
    super.initState();

    if (widget.index1 == 0) {
      shayari = funny;
    }
    if (widget.index1 == 1) {
      shayari = attitude;
    }
    if (widget.index1 == 2) {
      shayari = love;
    }
    if (widget.index1 == 3) {
      shayari = sad;
    }
    if (widget.index1 == 4) {
      shayari = friendship;
    }
    if (widget.index1 == 5) {
      shayari = Timepass;
    }
    if (widget.index1 == 6) {
      shayari = waqt;
    }
    if (widget.index1 == 7) {
      shayari = life;
    }
    if (widget.index1 == 8) {
      shayari = bewafa;
    }
    if (widget.index1 == 9) {
      shayari = Happiness;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.name}"),
        ),
        body: ListView.separated(
          itemCount: shayari.length,
          itemBuilder: (context, index) {
            return Container(
              height: 65,
              // margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                border: Border.all(
                  width: 3,
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return three(widget.name,shayari,index);
                  }));
                  setState(() {});
                },
                leading: Image.asset(
                  widget.image,
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                ),
                title: Text(
                  shayari[index],
                  maxLines: 1,
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
        ));
  }
}

List<String> funny = [
  """Dil ka dard dil todne wale kya jane Pyar 
  ke rivazon ko zamana kya jane Hoti hai kitni takleef
   ladki patane mein Ye ghar pe baitha ladki ka baap kya jaane

""",
  """Mohabbat Karli Tumse Bahut Sochne Ke Baad; 
  Ab Kisi Ko Dekhna Nahi Tumhe Dekhne Ke Baad; 
  Duniya Chhod Denge Tumhe Pane Ke Baad;
   Khuda Maaf Kare Itna Jhooth Bolne Ke Baad""",
  """Teri ulfat ko kabhi nakam na hone denge
Teri DOSTI ko kabhi badnam na hone denge
Meri zindagi main Suraj nikle na nikle
Teri zindagi main kabhi shaam na hone denge…""",
  """Manzil kay hai, rasta kya hai,
hausla hai to fasla kya hai,
vo saja dekar door jaa baithe,
kis se puchhun ki meri khata kya hai""",
  """Hum Aaj Bhi Dil Ka Aashiyana Sajane Se Darte Hain,
Baagon Mein Phool Khilaney Se Darte Hain,
Hamari Ek Pasand Se Tut Jaayeinge Hazaaro Dil,
Tabhi Toh Hum Aaj Bhi Girlfriend Bananey Se Darte Hain…""",
  """Unhone Ne Dekha Humein Tirchi Nazar Se To Hum Madhosh Ho Gaye;
   Jab Pata Chala Ki Unke Nain He Tirche Hai To Hum Behosh Ho Gaye""",
  """Hai Tu Agar Mera DilbarHai Tu Agar Mera DilbarTo Aaj Ke Lunch Ka Bill Tu Bha
Arz Kiya Hai: Dena Hai Ye Dil Daan Mein,
Dena Hai Ye Dil Daan Mein, 
Koi Hai Kya Mast Item Aapke Dhyaan Mein
Dabbay Main Dabba Dabay Main Khargosh,Uncle Nay Aankh Mari Aunty Bay-Hosh…
"""
];

List<String> attitude = [
  """
Apani kamjori duniya ko math dikhana.
 kyonki duniya iske sath khelne me bahut dilachaspi rakhthi hai.""",
  """Yadi aap samaaj ko pasandh karthe hai,
  tho dusro ka samman karna apka samman karna chahtha hai.""",
  """  jinke vichar aap apne jeevan ko nirdharit nahi kar sakthe islie aapko dusron ki raay ki avashyakatha nahi hai.
  
  """
];
List<String> love = [
  """Jab Dhadkano Ko Tham Leta Hai Koi,
Jab Khayalo Mein Naam Hamara Leta Hai koi,
Yaade Tab aur Yaadgar Ban Jaati Hai,
Jab Hume Humse Behtar Jaan Leta Hai Koi""",
  """Tu iss kadar mujhe apne kareeb lagta hai,
Tujhe alag sochu to ajeeb lagta hai,
Ye dosti ye chahate ye mohabat sab kya hai,
Tu to mujzhe mera naseeb lagta hai""",
  """Kuch rahe na rahe teri mohabbat ka sahara rahe,
Pyar main dooba, hamesha ye dil hamara rahe,
Khushian teri, saare ghum mere ho dua yahi hai,
Ankhoon mein sada chehra tumhara rahe."""
];

List<String> sad = [
  """ Zindagi Ke Kuch Lamhe Yaadgar Hote Hain, 
Yadoon Mein Kuch Log Khass Hote Hain, 
Yun To Wo Door Hote Hain Nazaron Se, 
Par Unke Ahsaas Dil Ke Paas Hote Hain.""",
  """Jab Dhadkano Ko Tham Leta Hai Koi,
Jab Khayalo Mein Naam Hamara Leta Hai Koi, 
Yaade Tab Aur Yaadgar Ban Jaati Hai, 
Jab Hume Humse Behtar Jaan Leta Hai Koi.""",
  """Mohabbat Nam Hai Jiska
Wo Aisi Qaid Hai Yaron.
Ki Umren Beet Jati Hain
Saja Poori Nahin Hoti."""
];

List<String> friendship = [
  """ Sharten Lagaee Nahin Jaatee Dostee Ke Saath,
Keejiye Mujhe Qubool Meree Har Kamee Ke Saath.""",
  """Dil Se Khyaal-E-Dost Bhulaaya Na Jaayega,
Seene Mein Daag Hai Kee Mitaaya Na Jaayega.""",
  """Jo Dil Ko Achchha Lagata Hai Usee Ko Dost Kahata Hoon,
Munaafiq Banakar Rishton Kee Siyaasat Main Nahin Karata."""
];

List<String> Timepass = [
  """ Aaj bas dil ek hi sawaal uthaata hai,
ki aye mere azaad Bharat
kya sach much mit chuki teri berozgari,
ya tere chmakte chere ke piche chipe hai lachari? """,
  """Aaj bahaut yaad aa rahi hai,
kyonki akela akela lag raha hai,
badi ghabrahat ho rahi hai,
saari duniya se khatra lag raha hai.""",
  """Aane ka waada to kar lete hain,
par nibhana bhool jaate hain.
Laga kar aag dil mein wo,
bujhana bhool jaate hain"""
];

List<String> waqt = [
  """Aane wale the mahinon baad,
station se hamara ghar door na tha.
Par hum milein unse,
shayad unhein manzoor na tha """,
  """Aankhen teri bahe to aansoo mere hon,
saansein teri chalein to dhadkan meri hon,
zindagi se yehi dil-e-tamanna hai ke,
dhadkan teri ruke aur maut meri ho."""
];

List<String> life = [
  """If you want to live a happy life
Tie it to a goal,
not to people Or things """,
  """I don’t Love Studying
I hate Studying
I like learning
Learning is beautiful""",
  """Every man needs a good woman in his life
Even if she is just a friend
A good woman adds value
To a man’s life,
no matter what capacity she serves in"""
];

List<String> bewafa = [
  """ Unhe Nafrat Thi Hamse To Izhaar Kyu Kiya,
Dena Hi Tha Zeher To Phir Pyar Kyu Kiya,
De Kar Zeher Kehte Hai Peena Hoga,
Aur Jab Pee Liya .""",
  """Hum To Tere Dil Ki Mehfil Sajane Aaye The,
Teri Kasam Tujhe Apna Banane Aaye The.
Kis Baat Ki Saza Dee Tune Ham Ko,
Bewafa Hum To Tere ..""",
  """Kisi ki achhai ka Itna bhi fayda mat uthao k
wo bura banne k liye majboor ho jaye
Bura" aksar wahi banta hai
Jo Achha ban k toot Chuka hota hai"""
];

List<String> Happiness = [
  """Before you say
“There are no good men”
Just make sure
You are a good women """,
  """If you don’t
Like me, take a map
Get a car,
Drive to hell
Have a nice trip""",
  """People say everything
Happens for a reason,
So when I punch you
In the face remember
I have a reason"""
];
