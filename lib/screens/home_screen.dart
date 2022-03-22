import 'package:flutter/material.dart';
import 'package:flutter_app/data/songs.dart';
import '../data/songs.dart';
import 'lyrics_screen.dart';

void main() {}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Music'),
      ),
      body: SongList(),
    );
  }
}

class SongList extends StatelessWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songsTitles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(songsTitles[index]),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              print(songsTitles[index]);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LyricsScreen(
                    id: index,
                    songTitle: songsTitles[index],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
