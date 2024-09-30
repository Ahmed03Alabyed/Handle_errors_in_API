import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddQuoteScreen extends StatefulWidget {

  const AddQuoteScreen({super.key});

  @override
  State<AddQuoteScreen> createState() => _AddQuoteScreenState();
}

const QOUTES_KEY = "qoutes_key";

class _AddQuoteScreenState extends State<AddQuoteScreen> {
  var prefs = SharedPreferencesAsync();
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                TextField(
                  controller: textController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Qoute"
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    List<String> oldList = (await prefs.getStringList(QOUTES_KEY)) ?? [];
                    oldList.add(textController.text);
                    prefs.setStringList(QOUTES_KEY, oldList);
                    Navigator.pop(context);
                  },
                  child: Text("Save"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
