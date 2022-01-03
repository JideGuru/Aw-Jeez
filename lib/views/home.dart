import 'package:aw_geez/components/body_builder.dart';
import 'package:aw_geez/components/character_card.dart';
import 'package:aw_geez/models/character.dart';
import 'package:aw_geez/util/constants.dart';
import 'package:aw_geez/util/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var viewModel = ref.watch(homeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
      ),
      body: BodyBuilder(
        apiRequestStatus: viewModel.requestStatus,
        loadingWidget: const Center(child: CircularProgressIndicator()),
        reload: () => viewModel.getCharacters(),
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: viewModel.characters.length,
          itemBuilder: (BuildContext context, int index) {
            Character character =
                Character.fromJson(viewModel.characters[index]);
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 10.0,
              ),
              child: CharacterCard(character: character),
            );
          },
        ),
      ),
    );
  }
}
