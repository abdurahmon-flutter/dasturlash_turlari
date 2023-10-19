import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class InfoPage extends StatefulWidget {
  static final String id = 'info_page';
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  _launchURLinstsBrowser() async {
    var url = Uri.parse("https://www.instagram.com/_abdurahmon_mahmudov");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biz haqimizda',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
 centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(13),
          child:
          Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: 650,
                width: double.infinity,
                 padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.black,
                ),
                child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text('Abdurahmon Mahmudov',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                      ),
                      SizedBox(height: 10,),
                      Image(image: AssetImage('assets/images/flutter.jpg'),width: double.infinity,height: 200),
                      SizedBox(height: 40,),
                      Text("Ismim Abdurahmon . Qashqadaryo viloyating Shahrisabz shahrida yashyman va 2009 - yilda tug'ilganman.Dasturlash yo'nalishiga qiziqishim tufayli men shahrimdagi to'garaklardan birida Flutterni o'rgandim va hozirda o'z soham bo'yicha ketmoqdaman. Bu dasturlash yo'nalishini qulay tarafi shuki men bir kod yozish orqali hamma qurilmalarda ishlaydigan qila olaman.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                    ],
                ),
              ),

            ],
          ),
        )
      ),
    );
  }
}

//https://www.facebook.com/profile.php?id=61552222012994
