
import 'package:flutter/material.dart';
import '../models/character_model.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({
    super.key,
    required this.character,
  });

  Color getStatusColor() {
    switch (character.status.toLowerCase()) {
      case "alive":
        return const Color(0xff97ce4c);
      case "dead":
        return Colors.redAccent;
      default:
        return Colors.grey;
    }
  }

  IconData getStatusIcon() {
    switch (character.status.toLowerCase()) {
      case "alive":
        return Icons.favorite;
      case "dead":
        return Icons.dangerous;
      default:
        return Icons.help_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff141a2e),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xff97ce4c),
          width: 3,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE
          Stack(
            children: [
              ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                     top: Radius.circular(17),
                    ),
                    child: SizedBox(
                    height: 130,
                    width: double.infinity,
                    child: Image.network(
                       character.image,
                       fit: BoxFit.cover,
                       ),
                    ),
                  ),

              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xff0a1f0a),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: getStatusColor(),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        getStatusIcon(),
                        color: getStatusColor(),
                        size: 12,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        character.status,
                        style: TextStyle(
                          color: getStatusColor(),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // DETAILS
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.name.toUpperCase(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    const Icon(
                      Icons.biotech,
                      color: Colors.cyanAccent,
                      size: 14,
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        character.species,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                Row(
                  children: [
                    Icon(
                      getStatusIcon(),
                      color: getStatusColor(),
                      size: 14,
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        character.status,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: getStatusColor(),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}