import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:english_words/english_words.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:text_to_speech/text_to_speech.dart';


void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> names = [
    "GetX Packege",
    "Shimmer Packege",
    "Fluttertoast Packege",
    "rflutter_alert Packege",
    "English_words Packege",
    "Font_awesome_flutter",
    "Text To Speach Packege",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Libraries App",),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              splashColor: Colors.brown[600],
              onTap: () {
                switch(index){
                  case 0 : Get.to(FirstPackege());
                  break;
                  case 1 :Get.to(secondPack());
                  break;
                  case 2 :Get.to(thirdPack());
                  break;
                  case 3 :Get.to(fourthPack());
                  break;
                  case 4 :Get.to(fifthPack());
                  break;
                  case 5 :Get.to(sixthPack());
                  break;
                  case 6 :Get.to(seventhPck());
                  break;
                }
              },
              title: Text('${names[index]}',style: TextStyle(color: Colors.brown[800]),),
              leading: Icon(Icons.account_balance_wallet_outlined,color: Colors.blue,),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.cyan,
            );
          },
          itemCount: names.length),
    );
  }
}

class FirstPackege extends StatelessWidget {
  const FirstPackege({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Packege'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
        Get.to(GetPage());
    }, child: Text('Click to Get'),
      ),
    ),
    );
  }
}

class secondPack extends StatelessWidget {
  const secondPack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer Packege'),
      ),
      body: Center(
        child:Container(
          child: SizedBox(
            width: 200.0,
            height: 100.0,
            child: Shimmer.fromColors(
              baseColor: Colors.red,
              highlightColor: Colors.yellow,
              child: Text(
                'Shimmer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class thirdPack extends StatelessWidget {
  const thirdPack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Fluttertoast Packege"),
      ),
      body:Container(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(onPressed: (){
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }, child: Text("Click To Toast")
              ),
            )
          ],
        ),
      ),
    );
  }
}

class fourthPack extends StatelessWidget {
  const fourthPack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("rflutter_alert Packege"),
      ),
      body:Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
            Center(
              child: ElevatedButton(onPressed: (){
                Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
                }, child: Text('Alert #1')),
            ),
            SizedBox(height: 15,),
            Center(
              child: ElevatedButton(onPressed: (){
                Alert(
                  context: context,
                  type: AlertType.error,
                  title: "RFLUTTER ALERT",
                  desc: "Flutter is more awesome with RFlutter Alert.",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "COOL",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      width: 120,
                    )
                  ],
                ).show();
              }, child: Text('Alert #2')),
            ),
            SizedBox(height: 15,),
            Center(
              child: ElevatedButton(onPressed: (){
                Alert(
                  context: context,
                  type: AlertType.warning,
                  title: "RFLUTTER ALERT",
                  desc: "Flutter is more awesome with RFlutter Alert.",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "FLAT",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      color: Color.fromRGBO(0, 179, 134, 1.0),
                    ),
                    DialogButton(
                      child: Text(
                        "GRADIENT",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(116, 116, 191, 1.0),
                        Color.fromRGBO(52, 138, 199, 1.0)
                      ]),
                    )
                  ],
                ).show();
              }, child: Text('Alert #3')),
            ),
          ],
        ),
      ),
    );
  }
}

class fifthPack extends StatelessWidget {
  const fifthPack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("English Word Packege"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (c,i){
            return ListTile(
              title: Text("Noun = ${nouns[i]} && Adjective = ${adjectives[i]}"),
            );
          },
        ),
      ),
    );
  }
}

class sixthPack extends StatelessWidget {
  const sixthPack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Font_awesome Packege"),
      ),
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: FaIcon(FontAwesomeIcons.faceDizzy,color: Colors.orange,size:50,)),
            Center(child: FaIcon(FontAwesomeIcons.adversal,color: Colors.pink,size:50,)),
            Center(child: FaIcon(FontAwesomeIcons.arrowDownZA,color: Colors.teal,size:50,)),
            Center(child: FaIcon(FontAwesomeIcons.algolia,color: Colors.black87,size:50,)),
            Center(child: FaIcon(FontAwesomeIcons.baby,color: Colors.orange,size:50,)),
            Center(child: FaIcon(FontAwesomeIcons.car,color: Colors.green,size:50,)),
            Center(child: FaIcon(FontAwesomeIcons.bookAtlas,color: Colors.brown,size:50,)),

          ],
        ),
      ),
    );
  }
}

class seventhPck extends StatelessWidget {
   seventhPck({Key? key}) : super(key: key);
   TextToSpeech tts = TextToSpeech();
   var text = "Good Morning Omid Habibi";
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text To Speach packege"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: (){
            tts.speak(text);
          }, child: Text('Click')),
        ),
      ),
    );
  }
}


class GetPage extends StatelessWidget {
  const GetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Center(
          child: Text("Get used instade of Navigator",style: TextStyle(fontSize: 30,color: Colors.blue[800],fontWeight: FontWeight.bold),),
        )
      ),
    );
  }
}
