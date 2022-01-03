import 'package:aw_geez/components/custom_card.dart';
import 'package:aw_geez/models/character.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: () {},
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CharacterImage(character: character),
          const SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.name ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 7.0,
                      width: 7.0,
                      decoration: BoxDecoration(
                        color: statusColor(),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Text(
                      '${character.status} - ${character.species}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                buildInfo('Last known location:', character.origin?.name),
                const SizedBox(height: 5.0),
                buildInfo('Origin:', character.location?.name),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildInfo(title, content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
            color: Colors.grey,
          ),
        ),
        Text(
          content,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }

  Color statusColor() {
    switch (character.status?.toLowerCase()) {
      case 'alive':
        return Colors.green[300]!;
      case 'dead':
        return Colors.red;
      case 'unknown':
        return Colors.blueGrey;
      default:
        return Colors.blueGrey;
    }
  }
}

class CharacterImage extends StatelessWidget {
  final Character character;

  const CharacterImage({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10.0),
        bottomLeft: Radius.circular(10.0),
      ),
      child: Image.network(
        character.image ?? '',
        height: 145.0,
      ),
    );
  }
}
