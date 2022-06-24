import 'package:flexmed/router_utility.dart';
import 'package:flexmed/screens/add_patient_page.dart';
import 'package:flexmed/screens/select_patient/select_patient_tool_button.dart';
import 'package:flutter/material.dart';

class SelectPatientListTiles extends StatelessWidget {
  const SelectPatientListTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 50,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 19,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Image.asset(
                        'assets/flexmed_logo_without_text_transparent.png',
                        fit: BoxFit.contain,
                        height: 100,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Lattisaw, Joseph",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "jblattisaw@gmail.com",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.cake,
                                          color: Colors.cyan,
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          "08/21/1989",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.deepPurpleAccent,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.calendar_month,
                                          color: Colors.cyan,
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          "03/21/2022",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SelectPatientToolButton(
                                  onPressed: () {},
                                  text: "Show Reports",
                                ),
                                SelectPatientToolButton(
                                  onPressed: () => RouterUtility.routerUtility(
                                      context, AddPatientPage()),
                                  text: "Edit Patient",
                                ),
                                SelectPatientToolButton(
                                  onPressed: () {},
                                  text: "Begin Tests",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
