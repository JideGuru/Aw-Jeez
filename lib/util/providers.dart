import 'package:aw_geez/view_models/home_view_model.dart';
import 'package:hooks_riverpod/all.dart';

final homeProvider = ChangeNotifierProvider((_) => HomeViewModel());