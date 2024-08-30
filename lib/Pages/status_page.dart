import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 39, 16),
        title: const Text(
          "Updates",
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            backgroundColor: const Color.fromARGB(255, 33, 156, 96),
            child: const Icon(Icons.edit),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 33, 156, 96),
            child: const Icon(Icons.camera_alt_outlined),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 34, 69, 40),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Status updates
          const Text(
            "Status",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Text(
            "This is where status updates will appear.",
            style: TextStyle(color: Colors.white),
          ),

          const SizedBox(
            height: 50,
          ),

          // Channels
          const Text(
            "Channels",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Text(
            "This is where channels joined will appear.",
            style: TextStyle(color: Colors.white),
          ),

          const SizedBox(
            height: 50,
          ),

          // Find Channels
          const Text(
            "Find Channels",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Text(
            "This is where list of channels one can join will appear.",
            style: TextStyle(color: Colors.white),
          ),

          const SizedBox(
            height: 30,
          ),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 33, 156, 96)),
            child: const Text(
              "Explore more",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
