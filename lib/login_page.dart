import 'package:flutter/material.dart';
import 'package:login_with_registration/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color buttonColor = const Color.fromARGB(255, 211, 27, 14);
  Color vHintTextVar = const Color.fromARGB(179, 186, 179, 179);
  bool varObscureText = true;
  Icon visibilityIcon = Icon(Icons.visibility_off);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //sign in text----------------------
            const Text(
              "Sign In ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'sans-serif'),
            ),
            // username-------------------
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 35, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintStyle: TextStyle(
                      color: vHintTextVar,
                    ),
                    hintText: 'user name'),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),

            //password------coco----------------------------

            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, right: 30),
              child: TextFormField(
                obscureText: varObscureText,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: visibilityIcon,
                      onPressed: () {
                        setState(() {
                          varObscureText = !varObscureText;
                          visibilityIcon = varObscureText
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility);
                        });
                      },
                    ),
                    //Icon(Icons.visibility_off),
                    border: const OutlineInputBorder(),
                    hintStyle: TextStyle(
                      color: vHintTextVar,
                    ),
                    hintText: 'Password'),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            //button sign in---------------------------
            const SizedBox(height: 60),

            Padding(
              padding: const EdgeInsets.only(left: 150, right: 150),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 81, 84, 161),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  /*  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)), */
                ),
                onPressed: () {},
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            //if not signed in go to registration
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "New here? ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
                Center(
                  child: InkWell(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      }),
                ),

                //),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
