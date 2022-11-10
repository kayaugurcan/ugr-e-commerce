import 'package:flutter/material.dart';
import 'package:ugr/constants.dart';
import 'package:ugr/project_colors.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: ProjectColors().backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: deviceHight * 0.04,
                ),
                const Text(
                  "Ugr",
                  style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Premium",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: deviceHight * 0.02,
                ),
                const Icon(Icons.shopping_bag),
                SizedBox(
                  height: deviceHight * 0.01,
                ),
                const Text(
                  "Welcome!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: deviceHight * 0.04,
                ),

                const EmailWidget(),
                SizedBox(
                  height: deviceHight * 0.04,
                ),

                const PasswordWidget(),
                SizedBox(
                  height: deviceHight * 0.04,
                ),

                //Login Button
                const LoginButton(),

                SizedBox(
                  height: deviceHight * 0.03,
                ),
                Text(Constants().registerNow),
                SizedBox(
                  height: deviceHight * 0.1,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class EmailWidget extends StatelessWidget {
  const EmailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ProjectColors().primaryColor,
          border: Border.all(color: ProjectColors().primaryColor),
          borderRadius: BorderRadius.all(
              Radius.circular(Constants().borderRadiusNormal))),
      child: Padding(
        padding: EdgeInsets.only(left: Constants().leftPadding),
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none, hintText: Constants().email),
        ),
      ),
    );
  }
}

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ProjectColors().primaryColor,
          border: Border.all(color: ProjectColors().primaryColor),
          borderRadius: BorderRadius.all(
              Radius.circular(Constants().borderRadiusNormal))),
      child: Padding(
        padding: EdgeInsets.only(left: Constants().leftPadding),
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              border: InputBorder.none, hintText: Constants().password),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(ProjectColors().primaryColor)),
      onPressed: () {},
      child: Center(
        child: Text(Constants().login,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
