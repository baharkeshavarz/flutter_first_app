import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   const LoginPage({super.key});

   @override
   Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        body: Column(
          children: [
            const SizedBox(height: 36,),
            const Text(
                      "Hello, welcome back!", 
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 22,
                           fontWeight: FontWeight.bold,
                           ),
               ),
            const SizedBox(height: 8,),
            const Text(
                      "Login to continue",
                       style: TextStyle(
                           color: Colors.white,
                      ),
              ),
            const SizedBox(height: 8,),
            TextField(
                     decoration: InputDecoration(
                        hintText: "Username",
                        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                      ),
              ),
            const SizedBox(height: 8,),
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
              SizedBox(  // make the button biger
                  width: 250,
                  child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                         ),
                       onPressed: () {},
                       child: const Text("Log in"),
                    ),
                ),
             const SizedBox(height: 32),
             const Text(
                    "Or sign in with",
                     style: TextStyle(
                          color: Colors.white,
                     ),
             ),
             ElevatedButton(
                   onPressed: () {}, 
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          "assets/images/google.png",
                           width: 22,
                           height: 22,
                        ),
                      const SizedBox(width: 6,),
                      const Text("Login with Google"),
                   ],),
              ),
              const SizedBox(height: 6,),
              ElevatedButton(
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
                )),
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
                ],)
          ],
        ),
      );
   }
}