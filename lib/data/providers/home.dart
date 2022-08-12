import 'package:aw_geez/data/notifiers/home/home_state_notifier.dart';
import 'package:aw_geez/repositories/home_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRepositoryProvider = Provider.autoDispose<HomeRepository>(
  (ref) => HomeRepository(),
);

final homeStateNotifierProvider =
    StateNotifierProvider.autoDispose<HomeStateNotifier, HomeState>(
  (ref) {
    final repository = ref.watch(homeRepositoryProvider);
    return HomeStateNotifier(repository: repository);
  },
);
