import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:popina_flutter_test/features/dashboard/presentation/pages/dashboard_page.dart';

import 'core/injectable/injection.dart';

Future<void> main() async {
  // Insure widgets loaded (required by DotEnv)
  WidgetsFlutterBinding.ensureInitialized();
  // Environment variables initializition
  final environment = Env.dev;
  configureInjection(environment);
  await dotenv.load(fileName: '.env/.env.$environment');
  EquatableConfig.stringify = true;
  // Main App Run
  runApp(Application());
}

class Application extends StatefulWidget {
  Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Popina Flutter Test",
      debugShowCheckedModeBanner: false,
      // Set text global font and color theme
      theme: ThemeData(
        textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.blueGrey,
        fontFamily: "SegoeUi",
      ),
      bodyText2: TextStyle(
        color: Colors.blueGrey,
        fontFamily: "SegoeUi",
      ),
      headline1: TextStyle(
        color: Colors.blueGrey,
        fontFamily: "SegoeUi",
      ),
      headline2: TextStyle(
        color: Colors.blueGrey,
        fontFamily: "SegoeUi",
      ),
      headline3: TextStyle(
        color: Colors.blueGrey,
        fontFamily: "SegoeUi",
      ),
      headline4: TextStyle(
        color: Colors.blueGrey,
        fontFamily: "SegoeUi",
      ),
      headline5: TextStyle(
        color: Colors.blueGrey,
        fontFamily: "SegoeUi",
      ),
      headline6: TextStyle(
        color: Colors.blueGrey,
        fontFamily: "SegoeUi",
      ),
      subtitle1: TextStyle(
        fontFamily: "SegoeUi",
        color: Colors.blueGrey,
      ),
      subtitle2: TextStyle(
        fontFamily: "SegoeUi",
        color: Colors.blueGrey,
      ),
      button: TextStyle(
        fontFamily: "SegoeUi",
        color: Colors.blueGrey,
      ),
      caption:  TextStyle(
        fontFamily: "SegoeUi",
        color: Colors.blueGrey,
      ),
      overline:   TextStyle(
        fontFamily: "SegoeUi",
        color: Colors.blueGrey,
      )
    ),
      ),
      // Serve dashboard page
      home: DashboardPage(),
    );
  }
  
}