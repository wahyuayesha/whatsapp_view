import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 39, 131, 80),
            bottom: const TabBar(
              labelColor: Colors.white,
              dividerColor: Color.fromARGB(255, 39, 131, 80),
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt_rounded),
                ),
                Tab(
                  text: 'CHAT',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                )
              ],
            ),
            title: const AppBarArea(),
          ),
          body: TabBarView(
            children: [
              // Tab 1
              const ColoredBox(
                color: Colors.orangeAccent,
                child: Icon(Icons.camera_alt_rounded),
              ),
              // Tab 2
              ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ContactBar(
                        photo: Image.asset('assets/profile1.jpg'),
                        name: 'Kak Aurel',
                        message: 'hold up',
                        lastSeen: '14:22'),
                    ContactBar(
                        photo: Image.asset('assets/profile2.jpg'),
                        name: 'Marcelin',
                        message: 'y',
                        lastSeen: '11:16'),
                    ContactBar(
                        photo: Image.asset('assets/profile3.jpg'),
                        name: 'Gracie Abrams',
                        message: 'Rencananya kapan?',
                        lastSeen: '11:12'),
                    ContactBar(
                        photo: Image.asset('assets/profile4.jpeg'),
                        name: 'Kak Revi',
                        message: 'ya nanti',
                        lastSeen: '09:54'),
                    ContactBar(
                        photo: Image.asset('assets/profile5.jpeg'),
                        name: 'Fadhil',
                        message: 'Iy kh?',
                        lastSeen: '07:30'),
                    ContactBar(
                        photo: Image.asset('assets/profile6.jpg'),
                        name: 'Mbak Taylor',
                        message: 'Hah???',
                        lastSeen: '15 NOV'),
                    ContactBar(
                        photo: Image.asset('assets/profile7.jpg'),
                        name: 'Aulia',
                        message: 'Oke sip',
                        lastSeen: '13 NOV')
                  ],
                ),
              // Tab 3
              const ColoredBox(
                color: Colors.green,
                child: Icon(Icons.circle),
              ),
              // Tab 4
              const ColoredBox(
                color: Colors.yellow,
                child: Icon(Icons.call),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarArea extends StatelessWidget {
  const AppBarArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          const Expanded(
              child: Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded),
              color: Colors.white),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
              color: Colors.white),
        ]),
      ],
    );
  }
}

class ContactBar extends StatefulWidget {
  const ContactBar(
      {super.key,
      required this.photo,
      required this.name,
      required this.message,
      required this.lastSeen});

  final Image photo;
  final String name;
  final String message;
  final String lastSeen;

  @override
  State<ContactBar> createState() => _ContactState();
}

class _ContactState extends State<ContactBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: ClipOval(
              child: widget.photo,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                Text(widget.message)
              ],
            ),
          ),
          Column(
            children: [
              Text(
                widget.lastSeen,
                style: const TextStyle(fontSize: 13),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
