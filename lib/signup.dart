
import 'package:e_commerce/login.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 130),
          child: Expanded(
            child: Column(
              children: [
                Image.asset('assets/Logo/login.png'),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Let’s Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      letterSpacing: .5,
                      color: Color(0xff223263),
                      fontStyle: FontStyle.normal),
                ),
                const Text(
                  'Create an new account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: .5,
                      color: Color(0xff9098B1),
                      fontStyle: FontStyle.normal),
                ),
                const SizedBox(
                  height: 25,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintStyle:
                                TextStyle(color: Colors.black.withOpacity(.5)),
                            hintText: 'Full Name',
                            prefixIcon: Icon(Icons.person,
                                color: Colors.black.withOpacity(.5)),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 247, 243, 243),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Name';
                            }
      
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintStyle:
                                TextStyle(color: Colors.black.withOpacity(.5)),
                            hintText: 'Your Email',
                            prefixIcon: Icon(Icons.email_outlined,
                                color: Colors.black.withOpacity(.5)),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 247, 243, 243),
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
      
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintStyle:
                                TextStyle(color: Colors.black.withOpacity(.5)),
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.black.withOpacity(.5),
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 247, 243, 243))),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
      
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintStyle:
                                TextStyle(color: Colors.black.withOpacity(.5)),
                            hintText: 'Password Again',
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.black.withOpacity(.5),
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 247, 243, 243))),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please confirm your password';
                            }
      
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () { Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginPage();
                        }));},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF40BFFF),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Already have an account? ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          letterSpacing: .5,
                          color: Colors.black.withOpacity(.6),
                          fontStyle: FontStyle.normal),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginPage();
                        }));
                      },
                      child: const Text(
                        'Sign In',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            letterSpacing: .5,
                            color: Color(0xff40BFFF),
                            fontStyle: FontStyle.normal),
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
