import 'package:flutter/material.dart';
import 'package:mongo_test/database/mongodb.dart';
import 'package:mongo_test/routes/mapping.dart';
import 'package:mongo_test/screens/add_patient_screen.dart';
import 'package:mongo_test/screens/home_screen.dart';
import 'package:mongo_test/screens/patients_screen.dart';
import 'package:mongo_test/screens/upload_report_screan.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      "/": (context) => HomePage(),
      MyRoutes.addPatientRoute: (context) => AddPatientPage(),
      MyRoutes.patientsRoute: (context) => PatientsPage(),
      MyRoutes.uploadReportRoute: (context) => UploadReportPage(),
    });
  }
}
