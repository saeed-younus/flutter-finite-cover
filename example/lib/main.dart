import 'package:finite_coverflow/finite_coverflow.dart';
import 'package:flutter/material.dart';

void main() => runApp(EntryWidget());

class EntryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finite Coverflow Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Simple Crousel"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: SizedBox(height: 200, child: getSimpleCrousel()),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Reverse Crousel"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: getReverseCrousel(),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Item Rotation Crousel"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: getRotationalCrousel(),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Item Variable Scale Crousel"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: getVariableScaleCrousel(),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Simple Stack Slider"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: getStackSlider(),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Reverse Stack Slider"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: getReverseStackSlider(),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("OverScroll Stack Slider"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: getOverScrollStackSlider(),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Gallery Slider"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: getGallerySlider(),
                    ),
                  );
                }));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget getPage(int index, double position) {
    return Card(
      child: Center(
        child: Text("$index"),
      ),
    );
  }

  Widget getSimpleCrousel() {
    return FinitePager(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          color: Colors.pink,
          child: Center(
            child: Text("1"),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text("2"),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text("3"),
          ),
        ),
        Card(
          color: Colors.lightBlue,
          child: Center(
            child: Text("4"),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text("5"),
          ),
        ),
        Card(
          color: Colors.orange,
          child: Center(
            child: Text("6"),
          ),
        ),
      ],
    );
  }

  Widget getReverseCrousel() {
    return FinitePager(
      reverse: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          color: Colors.pink,
          child: Center(
            child: Text("1"),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text("2"),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text("3"),
          ),
        ),
        Card(
          color: Colors.lightBlue,
          child: Center(
            child: Text("4"),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text("5"),
          ),
        ),
        Card(
          color: Colors.orange,
          child: Center(
            child: Text("6"),
          ),
        ),
      ],
    );
  }

  Widget getRotationalCrousel() {
    return FinitePager(
      rotationY: 60,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          color: Colors.pink,
          child: Center(
            child: Text("1"),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text("2"),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text("3"),
          ),
        ),
        Card(
          color: Colors.lightBlue,
          child: Center(
            child: Text("4"),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text("5"),
          ),
        ),
        Card(
          color: Colors.orange,
          child: Center(
            child: Text("6"),
          ),
        ),
      ],
    );
  }

  Widget getVariableScaleCrousel() {
    return FinitePager(
      scaleX: 0.8,
      scaleY: 0.4,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          color: Colors.pink,
          child: Center(
            child: Text("1"),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text("2"),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text("3"),
          ),
        ),
        Card(
          color: Colors.lightBlue,
          child: Center(
            child: Text("4"),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text("5"),
          ),
        ),
        Card(
          color: Colors.orange,
          child: Center(
            child: Text("6"),
          ),
        ),
      ],
    );
  }

  Widget getOpacityCrousel() {
    return FinitePager(
      opacity: 0.4,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          color: Colors.pink,
          child: Center(
            child: Text("1"),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text("2"),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text("3"),
          ),
        ),
        Card(
          color: Colors.lightBlue,
          child: Center(
            child: Text("4"),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text("5"),
          ),
        ),
        Card(
          color: Colors.orange,
          child: Center(
            child: Text("6"),
          ),
        ),
      ],
    );
  }

  Widget getStackSlider() {
    return FinitePager(
      pagerType: PagerType.stack,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Card(
          color: Colors.pink,
          child: Center(
            child: Text("1"),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text("2"),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text("3"),
          ),
        ),
        Card(
          color: Colors.lightBlue,
          child: Center(
            child: Text("4"),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text("5"),
          ),
        ),
        Card(
          color: Colors.orange,
          child: Center(
            child: Text("6"),
          ),
        ),
      ],
    );
  }

  Widget getReverseStackSlider() {
    return FinitePager(
      reverse: true,
      pagerType: PagerType.stack,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          color: Colors.pink,
          child: Center(
            child: Text("1"),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text("2"),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text("3"),
          ),
        ),
        Card(
          color: Colors.lightBlue,
          child: Center(
            child: Text("4"),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text("5"),
          ),
        ),
        Card(
          color: Colors.orange,
          child: Center(
            child: Text("6"),
          ),
        ),
      ],
    );
  }

  Widget getOverScrollStackSlider() {
    return FinitePager(
      overscroll: -300,
      pagerType: PagerType.stack,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          color: Colors.pink,
          child: Center(
            child: Text("1"),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text("2"),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text("3"),
          ),
        ),
        Card(
          color: Colors.lightBlue,
          child: Center(
            child: Text("4"),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text("5"),
          ),
        ),
        Card(
          color: Colors.orange,
          child: Center(
            child: Text("6"),
          ),
        ),
      ],
    );
  }

  Widget getGallerySlider() {
    return FinitePager(
      opacity: 0.5,
      scaleX: 0.5,
      scaleY: 0.5,
      reverse: true,
      pagerType: PagerType.stack,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          color: Colors.pink,
          child: Center(
            child: Text("1"),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text("2"),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text("3"),
          ),
        ),
        Card(
          color: Colors.lightBlue,
          child: Center(
            child: Text("4"),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text("5"),
          ),
        ),
        Card(
          color: Colors.orange,
          child: Center(
            child: Text("6"),
          ),
        ),
      ],
    );
  }
}
