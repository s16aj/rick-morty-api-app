import 'package:flutter/material.dart';

import '../models/character_model.dart';
import '../services/api_service.dart';
import '../widgets/character_card.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty Characters'),
      ),
      body: FutureBuilder<List<Character>>(
        future: fetchCharacters(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return const Center(
              child: Text('Error loading characters'),
            );
          }

          final characters = snapshot.data!;

          return ListView.builder(
            itemCount: characters.length,
            itemBuilder: (context, index) {
              final character = characters[index];

              return CharacterCard(character: character);
            },
          );
        },
      ),
    );
  }
}