import 'package:flutter/material.dart';

class CommunitiesPage extends StatefulWidget {
  const CommunitiesPage({super.key});

  @override
  State<CommunitiesPage> createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 39, 16),
        title: const Text(
          "Communities",
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
            // Menu icon
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
            tooltip: "Menu",
            color: Colors.white,
            iconSize: 30.0,
          ),
        ],
      ),

      backgroundColor: Color.fromARGB(255, 34, 69, 40),

      body: Column(
        children: [
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.groups,
                  size: 50,
                  color: Color.fromARGB(255, 95, 91, 91),
                ),
              ),
              const Text(
                "New Community",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),

          const SizedBox(
            height: 60,
          ),

          const Center(
              child: Text(
            "This is where all Communities joined will be displayed,",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
