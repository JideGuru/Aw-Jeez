import 'package:aw_geez/components/character_card.dart';
import 'package:aw_geez/components/errors/error_widget.dart';
import 'package:aw_geez/data/providers/home.dart';
import 'package:aw_geez/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var homeState = ref.watch(homeStateNotifierProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.watch(homeStateNotifierProvider).maybeWhen(
              orElse: () {},
              started: () {
                ref.watch(homeStateNotifierProvider.notifier).getCharacter();
              },
            );
      });
      return () {};
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(appName, key: Key('app-name')),
      ),
      body: homeState.maybeWhen(
        orElse: () => const Center(child: CircularProgressIndicator()),
        error: (isConnectionError) => MyErrorWidget(
          refreshCallBack: () =>
              ref.watch(homeStateNotifierProvider.notifier).getCharacter(),
          isConnection: isConnectionError ?? false,
        ),
        success: (characters) {
          return ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: characters.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                child: CharacterCard(character: characters[index]),
              );
            },
          );
        },
      ),
    );
  }
}
