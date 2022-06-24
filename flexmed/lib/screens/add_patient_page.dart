import 'package:flexmed/application_bar.dart';
import 'package:flexmed/custom_elevated_button.dart';
import 'package:flexmed/custom_text_field_widget.dart';
import 'package:flexmed/scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddPatientPage extends StatelessWidget {
  const AddPatientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      text: "New Patient Information",
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: CustomTextFieldWidget(
                    labelText: "First Name",
                    hintText: "First Name",
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: CustomTextFieldWidget(
                    labelText: "Middle Name",
                    hintText: "Middle Name",
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: CustomTextFieldWidget(
                    labelText: "Last Name",
                    hintText: "Last Name",
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldWidget(
                    labelText: "Height (feet)",
                    hintText: "Height (feet)",
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: CustomTextFieldWidget(
                    labelText: "Height (inches)",
                    hintText: "Height (inches)",
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Flexible(
                  child: CustomTextFieldWidget(
                    labelText: "Weight",
                    hintText: "Weight (Pounds)",
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Flexible(
                  child: CustomTextFieldWidget(
                    labelText: "Date of Birth",
                    hintText: "Date of Birth (mm/dd/yyyy)",
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Save",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () => Navigator.of(context).maybePop(),
                  ),
                  const SizedBox(width: 8.0),
                  CustomElevatedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Save And Begin Tests",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8.0),
                  CustomElevatedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () => Navigator.of(context).maybePop(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
