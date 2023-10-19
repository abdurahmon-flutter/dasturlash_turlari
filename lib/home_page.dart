
import 'package:dasturlash_turlari/dasturlash_tillari/dart_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/delphi_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/java_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/javascript_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/kotlin_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/php_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/python_page.dart';
import 'package:dasturlash_turlari/info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          "Dasturlash Tillari",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),

        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){Navigator.pushNamed(context, InfoPage.id);}, icon: Icon(Icons.info,size: 30,)),
          SizedBox(width: 10,)
        ],
      ),
      body: ListView(
        children: [
          _itemList(
              image: "assets/images/dart.jpg",
              name: "Dart",
              yaer: "2011",
              page: DartPage.id),

        _itemList(
            image: "assets/images/javascript.jpg",
            name: "Javascript",
            yaer: "1995",
            page: JavascriptPage.id),

      _itemList(
      image: "assets/images/java.jpg",
      name: "Java",
      yaer: "1995",
          page: JavaPage.id),

    _itemList(
    image: "assets/images/kotlin.jpg",
    name: "Kotlin",
    yaer: "2011",
        page: KotlinPage.id),

    _itemList(
    image: "assets/images/php.jpg",
    name: "PHP",
    yaer: "1994",
    page: PhpPage.id),

    _itemList(
    image: "assets/images/python.jpg",
    name: "Python",
    yaer: "1991",
    page: PythonPage.id),

    _itemList(
    image: "assets/images/delphi.jpg",
    name: "Delphi",
    yaer: "1995",
    page: DelphiPage.id),
    ],
      ),
      drawer: Drawer (
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue
              ),

            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Bosh Sahifa"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info), title: Text("Biz haqimizda"),
              onTap: () {
               Navigator.pushNamed(context, InfoPage.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_outlined), title: Text("Chiqish"),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemList({image, name, yaer, page}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, page);
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover, //change image fill type
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  yaer,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),

    );


  }
}
