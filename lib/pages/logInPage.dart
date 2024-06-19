import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:housing_information_website/impVariable.dart';
import 'package:housing_information_website/themes/theme.dart';


class logInPage extends StatefulWidget {
  @override
  _logInPageState createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: 600,
                  width:400,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          sbH20,
                          RichText(
                              text:  TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Welcome Back\n',
                                      style: GoogleFonts.poppins(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w400,
                                          color: lRed
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Please Enter Your Details',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Colors.grey[800]
                                      ),
                                    )
                                  ]
                              )
                          ),
                          // sbH10,
                          // sbH20,
                          // Container(
                          //   padding: const EdgeInsets.all(8.0),
                          //   decoration: BoxDecoration(
                          //     color: Colors.transparent,
                          //     borderRadius: BorderRadius.circular(8.0),
                          //     border: Border.all(
                          //       color: lRed,
                          //       width: .5,
                          //     )
                          //   ),
                          //   child: TextFormField(
                          //     decoration:  InputDecoration(
                          //         labelText: 'Full Name',
                          //         labelStyle: GoogleFonts.poppins(
                          //             color: Colors.grey[800],
                          //             fontSize: 14,
                          //             wordSpacing: 1.5,
                          //             fontWeight: FontWeight.w400
                          //         ),
                          //       border: InputBorder.none
                          //     ),
                          //     validator: (value) {
                          //       if (value!.isEmpty) {
                          //         return 'Please enter your full name';
                          //       }
                          //       return null;
                          //     },
                          //   ),
                          // ),
                          sbH20,
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: lRed,
                                  width: .5,
                                )
                            ),
                            child: TextFormField(
                              decoration:  InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: GoogleFonts.poppins(
                                      color: Colors.grey[800],
                                      fontSize: 14,
                                      wordSpacing: 1.5,
                                      fontWeight: FontWeight.w400
                                  ),
                                  border: InputBorder.none
                              ),
                              validator: (value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                          ),
                          sbH20,
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: lRed,
                                  width: .5,
                                )
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: GoogleFonts.poppins(
                                      color: Colors.grey[800],
                                      fontSize: 14,
                                      wordSpacing: 1.5,
                                      fontWeight: FontWeight.w400
                                  ),
                                  border: InputBorder.none
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value!.isEmpty || value.length < 8) {
                                  return 'Please enter a password with at least 8 characters';
                                }
                                return null;
                              },
                            ),
                          ),
                          sbH20,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: lRed,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      // If the form is valid, then invoke the API or whatever you want
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                  child: Text(
                                    'Log In',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                              ),
                              sbH5,
                              Text(
                                'or',
                                style: GoogleFonts.poppins(
                                  color: lRed,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              sbH5,
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(6.0),
                                    border: Border.all(
                                        color: lRed,
                                        width: .5
                                    )
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      // If the form is valid, then invoke the API or whatever you want
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                  child: Text(
                                    'Log In with Google',
                                    style: GoogleFonts.poppins(
                                        color: lRed,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          sbH20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Don\'t have an account?',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black
                                ),
                              ),
                              sbH10,
                              Text(
                                ' Sign Up!',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: lRed
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              sb30,
              Container(
                width: 500,
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(illustrationImage)),
                ),
              )
            ],
          ),
        )
    );
  }
}