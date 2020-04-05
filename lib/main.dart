
import 'package:disenos_app/src/pages/launcher_page.dart';
import 'package:disenos_app/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => Themechanger( 2 ),
    child: MyApp(),
  )
  );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final currentTheme = Provider.of<Themechanger>(context).currentTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños App',
      /*theme: ThemeData(
        primarySwatch: Colors.purple,
      ),*/
      theme: currentTheme,
      home: LauncherPage(),
    );
  }
}

