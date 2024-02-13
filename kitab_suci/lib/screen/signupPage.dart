import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/intropage3.dart';

class singUpPage extends StatefulWidget {
  const singUpPage({super.key});

  @override
  State<singUpPage> createState() => _singUpPageState();
}

class _singUpPageState extends State<singUpPage> {
  void _back() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const introPage3()));
  }
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            height: 35,
            margin: EdgeInsets.only(left: 20),
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.black,
            //     width: 2,
            //   )
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _back,
                  color: Color(0xFF4DACB2),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 320,
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.black, // Warna outline
            //     width: 2, // Ketebalan outline
            //   ),
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  child: Text(
                    "Hi!",
                    style: TextStyle(
                      fontSize: 48,
                      color: Color(0xFF4DACB2), 
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Create a new account",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFABABAB), 
                    ),
                  ),
                ),

                SizedBox(height: 30),

              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/register.png',
                ),
              ),

              // Inputan Register
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter your name",
                    labelText: "Full Name",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4DACB2),
                    )
                  ),
                  keyboardType: TextInputType.name,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "what do we call you?",
                    labelText: "Nickname",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4DACB2),
                    )
                  ),
                  keyboardType: TextInputType.name,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "example@email.com",
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4DACB2),
                    )
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter password",
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4DACB2),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _secureText? Icons.remove_red_eye : Icons.visibility_off),
                      onPressed: (){
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },
                      )),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText:  _secureText,
                  maxLength: 20,
                  
                ),
                SizedBox(height: 15),
                Container(
              child: Text(
                "Your password must be 8-20 characters long, contain letters and number, and must not contain spaces, special character, or emoji.",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFABABAB), 
                    ),
                  ),
                ),
              Container(
            margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: _back,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color(0xff4DACB2), // Ubah warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size(217, 51),
                  ),
                  child: const Text(
                    'Start',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
          ),











              ],
            )
          ),
        ]
          )
        );
  }

  // Widget _inputan() {
  //   return Column( 

  //   );
  // }
}