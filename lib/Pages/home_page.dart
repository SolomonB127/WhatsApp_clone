import 'package:flutter/material.dart';
// import 'package:signup_page/Pages/chat_page.dart';
import '../utils/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 39, 16),
        title: const Text(
          "WhatsApp",
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 33, 156, 96),
        child: const Icon(Icons.chat_outlined),
      ),
      backgroundColor: const Color.fromARGB(255, 34, 69, 40),

      body: Column(
        children: <Widget>[
          // Search Bar
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                hintText: "Ask Meta AI or Search",
              ),
            ),
          ),

          // Floating Buttons
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: const Size(5, 30),
                  ),
                  child: const Text(
                    "All",
                    style: TextStyle(
                        color: Color.fromARGB(181, 255, 246, 246),
                        fontWeight: FontWeight.w500),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: const Size(10, 30),
                  ),
                  child: const Text(
                    "Unread",
                    style: TextStyle(
                        color: Color.fromARGB(181, 255, 246, 246),
                        fontWeight: FontWeight.w500),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: const Size(10, 30),
                  ),
                  child: const Text(
                    "Favorites",
                    style: TextStyle(
                        color: Color.fromARGB(181, 255, 246, 246),
                        fontWeight: FontWeight.w500),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: const Size(10, 30),
                  ),
                  child: const Text(
                    "Groups",
                    style: TextStyle(
                        color: Color.fromARGB(181, 255, 246, 246),
                        fontWeight: FontWeight.w500),
                  )),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          // Chat UI
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/indiechatpage", arguments: {
                      "name": message["name"],
                      "image": message["image"],
                      });
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(message['image']),
                    ),
                    title: Text(
                      message['name'],
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      message['message'],
                      style: const TextStyle(color: Colors.grey),
                    ),
                    trailing: Text(
                      message['time'],
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
