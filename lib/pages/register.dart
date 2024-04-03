import 'package:flutter/material.dart';
import 'package:milestone_3/widgets/textfield.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController usernameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController countryC = TextEditingController();
  TextEditingController dateC = TextEditingController();
  TextEditingController phoneC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign up",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome!",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Enter Your Details",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                TextfieldWidget(
                  controller: usernameC,
                  hintText: 'User Name',
                  keyboardType: TextInputType.text,
                  suffixIcon: Icon(Icons.person_outline_rounded),
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextfieldWidget(
                  controller: emailC,
                  hintText: 'Email Address',
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: Icon(Icons.email_outlined),
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextfieldWidget(
                  controller: countryC,
                  hintText: 'Country',
                  keyboardType: TextInputType.text,
                  suffixIcon: Icon(Icons.arrow_drop_down_circle_outlined),
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextfieldWidget(
                  controller: dateC,
                  hintText: 'Date Of Birth',
                  keyboardType: TextInputType.text,
                  suffixIcon: Icon(Icons.date_range_outlined),
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextfieldWidget(
                  controller: phoneC,
                  hintText: 'Phone',
                  keyboardType: TextInputType.phone,
                  suffixIcon: Icon(Icons.phone_callback_outlined),
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextfieldWidget(
                  controller: passwordC,
                  hintText: 'Password',
                  keyboardType: TextInputType.text,
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Terms and Conditions",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Or Continue With",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Divider(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.black54,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/google.png",
                        width: 24,
                        height: 24,
                        color: Colors.black54,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.apple,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already Have an Account? ",
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
