import 'package:aw_geez/view_models/home_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeProvider = ChangeNotifierProvider((_) => HomeViewModel());
