
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour/chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showPassward = true;

  final passwordController = TextEditingController();

  List<String> students = [
    "Angry Birds",
    "Um E Habiba",
    "Sneha",
    "Eman Fatima",
    "Iman Fatima",
    "Rabia Islam",
  ];

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          backgroundColor: Colors.greenAccent,
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),

            TextButton(
              onPressed: () {},
              child: const Text("Unread"),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Get.to(
                            () => ChatHistory(
                              name: students[index],
                              n: index,
                            ),
                          );
                        },

                        leading: const CircleAvatar(
                          child: Icon(Icons.person),
                        ),

                        title: Text(students[index]),

                        subtitle: const Text(
                          "Hello, how are you?",
                        ),

                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("10:00 am"),

                            const SizedBox(height: 4),

                            const CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.green,
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Divider(
                        height: 1,
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.chat),
        ),
      ),
    );
  }
}
