
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  RxInt counter = 1.obs;

  final box = GetStorage();

  @override
  void initState() {
    super.initState();

    counter.value = box.read('counter') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          backgroundColor: Colors.green,
        ),

        body: Obx(
          () => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Text(
                  "Counter: ${counter.value}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    counter.value--;

                    box.write('counter', counter.value);
                  },

                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter.value++;

            box.write('counter', counter.value);
          },

          backgroundColor: Colors.green,

          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
