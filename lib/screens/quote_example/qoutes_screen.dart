import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled12/screens/quote_example/add_quote_screen.dart';

class QoutesScreen extends StatefulWidget {
  const QoutesScreen({super.key});

  @override
  State<QoutesScreen> createState() => _QoutesScreenState();
}

class _QoutesScreenState extends State<QoutesScreen> {
  var prefs = SharedPreferencesAsync();

  List<String> myList = [];

  @override
  void initState() {
    loadList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Qoutes"),
        centerTitle: true,
        actions: [IconButton(onPressed: loadList, icon: Icon(Icons.refresh))],
      ),
      body: (myList.isEmpty)
          ? Center(child: const Text("No Quotes Found!",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),))
          : ListView.separated(
              itemCount: myList.length,
              itemBuilder: (_, index) => QuoteItem(quoteText: myList[index]),
              separatorBuilder: (_, index) => Divider(),
            ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.edit),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddQuoteScreen(),
              ),
            );
          }),
    );
  }

  Future<void> loadList() async {
    myList = await prefs.getStringList(QOUTES_KEY) ?? [];
    setState(() {});
  }
}

class QuoteItem extends StatelessWidget {
  final String quoteText;

  const QuoteItem({super.key, required this.quoteText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(quoteText),
    );
  }
}
