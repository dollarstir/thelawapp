import 'package:flutter/material.dart';
import 'package:law_app/hompage.dart';
import 'package:law_app/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isVisible = true;

  void _visible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Welcome!",
                style: GoogleFonts.lato(
                    color: Color(0xFFc07f00),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1, vertical: 2),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0,
                            color: Color.fromARGB(255, 247, 247, 247))),
                    labelText: 'Username or Email',
                    prefixIcon: const Icon(Icons.person),
                    // hintText: 'Username or Email',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1, vertical: 2),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextField(
                  obscureText: _isVisible,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0,
                            color: Color.fromARGB(255, 247, 247, 247))),
                    labelText: 'password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                        icon: _isVisible
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            print(_isVisible);

                            _visible();
                            print("done");
                            print(_isVisible);
                          });
                        }),
                    // hintText: 'Username or Email',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Text("Forgot Password?",
                  style: GoogleFonts.lato(color: Color(0xff999999))),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: ElevatedButton(
                  style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.only(left: 30)),
                      fixedSize: MaterialStateProperty.all(Size(350, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFc07f00))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.lato(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Text("Don't Have an account?"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Sign Up",
                      style: GoogleFonts.lato(
                          decoration: TextDecoration.underline,
                          color: Color(0xFFc07f00),
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
