import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   const LoginPage({super.key});

   @override
   Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    const Spacer(),
                    const Text(
                              "Hello, welcome back!", 
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  ),
                      ),
                    const SizedBox(height: 6,),
                    const Text(
                              "Login to continue",
                              style: TextStyle(
                                  color: Colors.white,
                              ),
                      ),
                    const Spacer(),
                    TextField(
                            decoration: InputDecoration(
                                hintText: "Username",
                                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.5),
                              ),
                      ),
                    const SizedBox(height: 12,),
                    TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                              ),
                    ),
                    Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 13),
                                    foregroundColor: Colors.white,
                                  ),
                                onPressed: () {},
                                child: const Text("Forget password?")
                              ),
                          ),
                      const SizedBox(height: 32,),
                    SizedBox(  // make the button biger
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.amber,
                                ),
                              onPressed: () {
                                   Navigator.of(context).pushReplacementNamed("/home");  //remove the stack in navigation
                              },
                              child: const Text("Log in"),
                            ),
                        ),
                    const Spacer(),
                    const Text(
                            "Or sign in with",
                            style: TextStyle(
                                  color: Colors.white,
                            ),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                       height: 46,
                       child: ElevatedButton(
                            onPressed: () {}, 
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "assets/images/google.png",
                                  width: 22,
                                  height: 22,
                                ),
                              const SizedBox(width: 8,),
                              const Text("Login with Google"),
                          ],),
                      ),
                   ),
                    const SizedBox(height: 12,),
                        SizedBox(
                        height: 46,
                        child: ElevatedButton(
                          onPressed: () {}, 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Image.asset(
                                  "assets/images/facebook.png",
                                    width: 22,
                                    height: 22,
                              ),
                              const SizedBox(width: 6,),
                              const Text("Login with Facebook")
                            ],
                          )
                          ),
                        ),
                        Row(children: [
                          const Text("Don't have account?", style: TextStyle(color: Colors.white,),),
                          TextButton(
                              style: TextButton.styleFrom(foregroundColor: Colors.amber,),
                              onPressed: () {},
                              child: const Text(
                                              "Sign up", 
                                               style: TextStyle(decoration: TextDecoration.lineThrough),
                                            ),
                                            ),
                        ],),
                    const Spacer(),
                    
                  ],
                ),
              ),
              ), 
            ),
        );
   }
}