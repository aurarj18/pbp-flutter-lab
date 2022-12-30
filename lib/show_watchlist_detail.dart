import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/tambah_budget.dart';
import 'package:counter_7/show_budget.dart';
import 'package:counter_7/show_watchlist.dart';
import 'package:counter_7/model/watchlist_model.dart';
import 'package:counter_7/drawer.dart';

class MyWatchListDetail extends StatelessWidget {
  final WatchList myWatchList;
  const MyWatchListDetail({super.key, required this.myWatchList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const ScfDrawer(),
      body: Column(
        children: [
          Center(
              child: Text(
            myWatchList.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
          )),
          Text("Release Date: " + myWatchList.releaseDate,
              style: TextStyle(fontSize: 25)),
          Text("Rating: " + myWatchList.rating.toString() + "/5",
              style: TextStyle(fontSize: 25)),
          myWatchList.watched
              ? Text("Status : watched", style: TextStyle(fontSize: 25))
              : Text("Status : unwatched", style: TextStyle(fontSize: 25)),
          Text("Review: " + myWatchList.review, style: TextStyle(fontSize: 25)),
          Container(
            width: 125,
            child: TextButton(
              child: const Text(
                "Back",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}