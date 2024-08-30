import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 39, 16),
        title: const Text(
          "Calls",
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        // Icons
        actions: <Widget>[
          // Camera icon
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
            tooltip: "Camera",
            color: Colors.white,
            iconSize: 30.0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            tooltip: "Search",
            color: Colors.white,
            iconSize: 30.0,
          ),
          IconButton(
            // Menu icon
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
            tooltip: "Menu",
            color: Colors.white,
            iconSize: 30.0,
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 33, 156, 96),
        child: const Icon(Icons.phone_forwarded),
      ),
      backgroundColor: const Color.fromARGB(255, 34, 69, 40),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Favorites",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 156, 96),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.favorite,
                  size: 30,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Add to Favorites",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Recent",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              "This is where all recent calls will appear",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
