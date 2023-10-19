import 'package:dasturlash_turlari/dasturlash_tillari/dart_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/delphi_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/java_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/kotlin_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/php_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/python_page.dart';
import 'package:flutter/material.dart';

import '../servise/matnlar.dart';


class JavascriptPage extends StatefulWidget {
  static final String id = "javas_page";

  const JavascriptPage({super.key});

  @override
  State<JavascriptPage> createState() => _JavascriptPage();
}

class _JavascriptPage extends State<JavascriptPage> {

  MatnServise matn=MatnServise();
  int index=1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.lightBlue,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Javascript",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),
              ),
              background: Image(
                image: AssetImage("assets/images/javascript.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Nomi:",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Javascript",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("Ma'lumot:",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 24),),
                    SizedBox(height: 10,),
                    Text(matn.getUzunMatn(index).matn,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),

                    Container(
                      height: 400,
                      child: PageView(
                        children: [
                          Container(
                              color: Colors.blue,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, DartPage.id);
                                },
                                child: Image.asset(
                                  "assets/images/dart.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              color: Colors.blue,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, JavaPage.id);
                                },
                                child: Image.asset(
                                  "assets/images/java.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              color: Colors.blue,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, KotlinPage.id);
                                },
                                child: Image.asset(
                                  "assets/images/kotlin.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              color: Colors.blue,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, PhpPage.id);
                                },
                                child: Image.asset(
                                  "assets/images/php.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              color: Colors.blue,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, PythonPage.id);
                                },
                                child: Image.asset(
                                  "assets/images/python.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              color: Colors.blue,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, DelphiPage.id);
                                },
                                child: Image.asset(
                                  "assets/images/delphi.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),


                        ],

                      ),
                    )
                  ],

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
