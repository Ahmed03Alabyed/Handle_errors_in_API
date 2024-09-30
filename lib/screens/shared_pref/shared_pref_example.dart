import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPreferencesAsync pref = SharedPreferencesAsync();

  var name = "";

  @override
  void initState() {
    loadName();
    super.initState();
  }

  Future<void> loadName() async {
    name = await pref.getString("name_key") ?? "no name";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Name"),
                  textInputAction: TextInputAction.done,
                  onSubmitted: (t) {
                    pref.setString("name_key", t);
                  }),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 45),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Save value",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      name = await pref.getString("name_key") ?? "no name";
                      setState(() {});
                    },
                    child: const Text(
                      "Read Value",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
