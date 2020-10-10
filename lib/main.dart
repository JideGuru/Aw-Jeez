import 'package:aw_geez/util/constants.dart';
import 'package:aw_geez/theme/theme_config.dart';
import 'package:aw_geez/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/all.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appName,
        theme: themeData(ThemeConfig.lightTheme),
        // darkTheme: themeData(ThemeConfig.darkTheme),
        home: Splash(),
      ),
    );
  }

  ThemeData themeData(ThemeData theme) {
    return theme.copyWith(
      textTheme: GoogleFonts.sourceSansProTextTheme(
        theme.textTheme,
      ),
    );
  }
}
