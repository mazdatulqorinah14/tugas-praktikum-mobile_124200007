import 'package:flutter/material.dart';

void main() { runApp (const MyApp()); }
class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: Icon(Icons.home),
          title:Text('Login Screen'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 120.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Container(
                alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
                  child: FlutterLogo(
                    size: 40,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Mazdatul Qorinah 124200007',
                        style: TextStyle(fontSize: 10),
                  ),
                ),
                    SizedBox(height: 30.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                         TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(Icons.person, size: 30,),
                            hintText: 'E-mail',
                            labelText: "e-mail",
                            labelStyle: TextStyle(color: Colors.black87),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                              prefixIcon: Icon(Icons.lock, size: 30,),
                                 hintText: 'Password',
                                labelText: "password",
                                labelStyle: TextStyle(color: Colors.black87),
                              ),
                              ),
                          ],
                        ),
                      ],
                    ),
                     SizedBox(height: 10.0),
                     Card(
                       color: Colors.amber,
                       elevation: 5,
                       child: Container(
                         height: 50,
                         child: InkWell(
                           splashColor: Colors.white,
                           onTap: (){},
                           child: Center(
                             child: Text("Log in", style: TextStyle(fontSize: 20, color: Colors.white),),
                           ),
                         ),
                       ),
                     ),
                     Container(
                       child: const Text('Forgot Password?'),
                     ),
                  ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}


