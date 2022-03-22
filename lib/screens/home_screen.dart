import 'package:flutter/material.dart';

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
    return ListView(
      children: [
        Card(
          child: ListTile(
            title: Text('Maa muu nash ir'),
            trailing: Icon(Icons.chevron_right),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Altan nawch'),
            trailing: Icon(Icons.chevron_right),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('chamdaa'),
            trailing: Icon(Icons.chevron_right),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Urgelj hamtdaa'),
            trailing: Icon(Icons.chevron_right),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('zoriulaad'),
            trailing: Icon(Icons.chevron_right),
          ),
        ),
        ListTile(
          title: Text('zurh zusne'),
          trailing: Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
