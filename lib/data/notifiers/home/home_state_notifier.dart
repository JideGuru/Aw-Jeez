import 'package:aw_geez/data/models/character.dart';
import 'package:aw_geez/repositories/home_repository.dart';
import 'package:aw_geez/util/util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';

part 'home_state_notifier.freezed.dart';

class HomeStateNotifier extends StateNotifier<HomeState> {
  final HomeRepository _repository;

  HomeStateNotifier({
    required HomeRepository repository,
  })  : _repository = repository,
        super(const HomeState.started());

  Future<void> getCharacter() async {
    state = const HomeState.loadInProgress();
    try {
      Map body = await _repository.getCharacters();
      List characterList = body['results'];
      List<Character> characters = characterList.map((e) => Character.fromJson(e)).toList();
      state = HomeState.success(characters: characters);
    } catch (e) {
      if (Util.isConnectionError(e)) {
        state = const HomeState.error(isConnectionError: true);
      } else {
        state = const HomeState.error();
      }
    }
  }
}