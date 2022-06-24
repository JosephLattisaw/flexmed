import 'package:flexmed/custom_elevated_button.dart';
import 'package:flexmed/custom_text_field_widget.dart';
import 'package:flexmed/router_utility.dart';
import 'package:flexmed/screens/select_patient/select_patient_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double getBodyHeight() {
      return (MediaQuery.of(context).size.height -
          Scaffold.of(context).appBarMaxHeight!);
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/flexmed_logo_on_transparent.png',
            fit: BoxFit.contain,
            height: getBodyHeight() * 0.1,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CustomTextFieldWidget(
              labelText: "Email",
              hintText: "Enter a valid email address",
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CustomTextFieldWidget(
              obscureText: true,
              labelText: "Password",
              hintText: "Enter a secure password",
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Forgot Password",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6, // <-- match_parent
            height: getBodyHeight() * 0.05, // <-- match-parent
            child: CustomElevatedButton(
              onPressed: () => RouterUtility.routerUtility(
                context,
                const SelectPatientPage(),
              ),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
