import 'package:flexmed/application_bar.dart';
import 'package:flexmed/custom_elevated_button.dart';
import 'package:flexmed/router_utility.dart';
import 'package:flexmed/scaffold_widget.dart';
import 'package:flexmed/screens/add_patient_page.dart';
import 'package:flexmed/screens/select_patient/select_patient_list_tiles.dart';
import 'package:flutter/material.dart';

class SelectPatientPage extends StatelessWidget {
  const SelectPatientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      text: "Select Patient",
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Search",
                        hintText: "Last Name or First Name or DOB Year",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  CustomElevatedButton(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.deepPurpleAccent),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const Expanded(child: SelectPatientListTiles()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomElevatedButton(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Add Patient",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onPressed: () =>
                    RouterUtility.routerUtility(context, AddPatientPage()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
