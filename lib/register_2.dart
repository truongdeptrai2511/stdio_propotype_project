import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:propotypefltutter/model/user.dart';
class ShowSreenProfile extends StatefulWidget {
  const ShowSreenProfile({super.key});

  @override
  State<ShowSreenProfile> createState() => _ShowSreenProfileState();
}

class _ShowSreenProfileState extends State<ShowSreenProfile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * (1 / 20),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            const SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: const Text(
                "Register",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "the_jane",
                          ),
                          onSaved: (String? value) {},
                          validator: (String? value) {
                            if (value!.length < 1) {
                              return "Vui long nhap username";
                            }
                          },
                        ),
                      ),

                      SizedBox(height: 15,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _formKey.currentState!.validate();
                            });
                          },
                          child: Text("REGISTER", style: TextStyle(color: Colors.white, fontSize: 14),),
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              padding: EdgeInsets.all(14),
              child: Text.rich(TextSpan(
                  children: [
                    const TextSpan(
                        text: "By signing up, you agree to Photo's "
                    ),
                    TextSpan(
                        style:  const TextStyle(color: Colors.black, decoration: TextDecoration.underline),
                        text: "Term of Service",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            //on tap code here, you can navigate to other page or URL
                            String url = "";
                            var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                            if(urllaunchable){
                              await launch(url); //launch is from url_launcher package to launch URL
                            }else{
                              print("URL can't be launched.");
                            }
                          }

                    ),
                    TextSpan(
                      text: " and ",
                    ),
                    TextSpan(
                        style:  const TextStyle(color: Colors.black, decoration: TextDecoration.underline),
                        text: "Privacy Policy",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            //on tap code here, you can navigate to other page or URL
                            String url = "";
                            var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                            if(urllaunchable){
                              await launch(url); //launch is from url_launcher package to launch URL
                            }else{
                              print("URL can't be launched.");
                            }
                          }

                    ),

                  ]

              )),
            ),
          ],
        ),
      ),
    );
  }
}