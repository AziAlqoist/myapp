import 'package:flutter/material.dart';
import 'package:breaking_bad_flutter/models/character.dart';

class DetailScreen extends StatelessWidget {
  final Character character;

  const DetailScreen({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(character.imageUrl),
            ),
            SizedBox(height: 16),
            // Mengganti headline4 dengan headlineLarge (atau headlineMedium sesuai kebutuhan)
            Text(
              character.name,
              style: Theme.of(context).textTheme.headlineLarge, // Ganti headline4 dengan headlineLarge
            ),
            SizedBox(height: 8),
            // Mengganti bodyText1 dengan bodyLarge
            Text(
              'Nickname: ${character.nickname}',
              style: Theme.of(context).textTheme.bodyLarge, // Ganti bodyText1 dengan bodyLarge
            ),
            SizedBox(height: 8),
            Text(
              'Status: ${character.status}',
              style: Theme.of(context).textTheme.bodyLarge, // Ganti bodyText1 dengan bodyLarge
            ),
            SizedBox(height: 8),
            Text(
              'Portrayed by: ${character.portrayed}',
              style: Theme.of(context).textTheme.bodyLarge, // Ganti bodyText1 dengan bodyLarge
            ),
          ],
        ),
      ),
    );
  }
}
