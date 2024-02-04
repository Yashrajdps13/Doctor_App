import 'package:flutter/material.dart';
import 'package:mongo_test/routes/mapping.dart';
import 'package:mongo_test/widgets/drawer.dart';
import 'package:mongo_test/widgets/home_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 0.12 * (MediaQuery.of(context).size.width),
                right: 0.06 * (MediaQuery.of(context).size.width),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'WELCOME TO',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter',
                        ),
                      ),
                      Text(
                        'FILEZY',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFA957F3),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('lib/images/logo.png'),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 0.03 * (MediaQuery.of(context).size.height)),
            Container(
              width: 0.83 * (MediaQuery.of(context).size.width),
              height: 0.3 * (MediaQuery.of(context).size.height),
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(6.83),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(
                        boxColor: 0xFFDFBDFE,
                        label: 'Upload Report',
                        image: 'lib/images/upload_icon.png',
                        route: MyRoutes.uploadReportRoute,
                      ),
                      Spacer(),
                      MyButton(
                        boxColor: 0xFF8CF8B7,
                        label: 'Patients',
                        image: 'lib/images/patient_assigned.png',
                        route: MyRoutes.patientsRoute,
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    children: [
                      MyButton(
                        boxColor: 0xFFFFF7AD,
                        label: 'Predict',
                        image: 'lib/images/predict.png',
                        route: MyRoutes.addPatientRoute,
                      ),
                      Spacer(),
                      MyButton(
                        boxColor: 0xFF95B2FB,
                        label: 'History',
                        image: 'lib/images/history.png',
                        route: MyRoutes.addPatientRoute,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
