import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: const MyHomePage(title: 'Flutter Custom Fonts issue'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: const [
                Text(
                  'Custom Fonts rendering issue:\nSF Pro Text, Poppins, Arial rounded',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 20),

                ///[SF Pro]
                Text(
                  "Hello World",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontFamily: 'SF-Pro-Text',
                  ),
                ),
                Text(
                  "Hello World",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'SF-Pro-Text',
                  ),
                ),
                Text(
                  "Hello World",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF-Pro-Text',
                  ),
                ),
                Text(
                  "Hello World",
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Text',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 50),

                ///[Poppins]
                Text(
                  "Hello World",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Hello World",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Hello World",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text("Hello World"),
                SizedBox(height: 50),

                ///[Arial rounded]
                Text(
                  "Hello World",
                  style: TextStyle(
                    fontFamily: 'Arial',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
