import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeatFinder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.dark(
          brightness: Brightness.dark,
          primary: Colors.green,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BeatFinder",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // Intro Text
            Center(
              child: Text(
                "Welcome Mrityunjay!",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),

            SizedBox(height: 16),

            //Search Bar to search the songs
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(24),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                autofocus: true,
                style: TextStyle(fontWeight: FontWeight.w700),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintFadeDuration: Duration(milliseconds: 50),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),

            SizedBox(height: 32),

            // Recommended Songs
            Text(
              "Recommended Songs",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            SizedBox(height: 32),

            // Songs you listened to
            Text(
              "Songs you listened to",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            SizedBox(height: 32),

            // Artists you might like
            Text(
              "Artists you might like",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            SizedBox(height: 32),

            // Genres you might like
            Text(
              "Genres you might like",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
