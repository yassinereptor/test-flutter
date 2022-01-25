import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:popina_flutter_test/features/dashboard/presentation/pages/dashboard_page.dart';

import 'core/injectable/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final environment = Env.dev;
  configureInjection(environment);
  await dotenv.load(fileName: '.env/.env.$environment');
  EquatableConfig.stringify = true;
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
      home: DashboardPage(),
    );
  }
  
}