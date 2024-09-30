
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled12/data/http_requests/anime_search_response_entity.dart';




class HttpApiExample extends StatefulWidget {
  const HttpApiExample({super.key});

  @override
  State<HttpApiExample> createState() => _HttpApiExampleState();
}

class _HttpApiExampleState extends State<HttpApiExample> {
 
  AnimeSearchResponseEntity? searchResponse;
  var searchTextController = TextEditingController();
  
  Future<void> searchAnime(String seachValue) async {

    var response = await http.get(Uri.https("api.jikan.moe","/v4/anime",{"q": seachValue}));
    var jsonResponse = jsonDecode(response.body);
    searchResponse = AnimeSearchResponseEntity.fromJson(jsonResponse);
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Posts App :D"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(onPressed: (){
                searchAnime(searchTextController.text);
              }, child: Text("Search")),
              Expanded(
                child: TextField(
                  controller: searchTextController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResponse?.data?.length ?? 0,
                itemBuilder: (c,index) => Column(
              children: [
                Text(searchResponse?.data?[index].titleEnglish ?? ""),
                Image(image: NetworkImage(searchResponse?.data?[index].images?.jpg?.imageUrl ?? "")),
                Text(searchResponse?.data?[index].titleJapanese ?? ""),
            
              ],
            )),
          )
        ],
      )
    );
  }
}
