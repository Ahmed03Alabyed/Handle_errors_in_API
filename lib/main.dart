import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'data/http_requests/post_response.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String errorMessage = "";
  List<PostResponse>? postLists;

  Future<void> loadPosts() async {
    try {
      print("Loading posts...");
      var response =
          await http.get(Uri.parse("https://freefakeapi.io/api/posts?limit=6"));

      if (response.statusCode == 200) {
        List<dynamic> jsonList = jsonDecode(response.body);
        postLists =
            jsonList.map((item) => PostResponse.fromJson(item)).toList();
        setState(() {});
        print("Posts loaded: $postLists");
      } else if (response.statusCode == 404) {
        errorMessage = "Error: Resource not found.";
        print(errorMessage);
      } else if (response.statusCode == 401) {
        errorMessage = "Error: Unauthorized access.";
        print(errorMessage);
      } else if (response.statusCode == 400) {
        errorMessage = "Error: Bad request.";
        print(errorMessage);
      } else if (response.statusCode == 500) {
        errorMessage = "Error: Server issue, try again later.";
        print(errorMessage);
      }
    } catch (e) {
      if (e is TimeoutException || e is SocketException || e is HttpException) {
        errorMessage = "Error: No internet connection.";
        setState(() {});
        print(errorMessage);
      }
      print("Error occurred: $e");
    }
  }

  @override
  void initState() {
    loadPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Posts List"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  errorMessage,
                  style: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
            Expanded(
              child: ListView.builder(
                itemCount: postLists?.length ?? 0,
                itemBuilder: (c, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(postLists![index].picture ??
                        "https://via.placeholder.com/150"),
                    Text(postLists![index].title ?? "No title available",
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(postLists![index].content ?? "No content available"),
                    const Divider(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
