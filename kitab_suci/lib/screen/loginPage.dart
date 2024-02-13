import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/intropage2.dart';
import 'package:kitab_suci/screen/intropage3.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool _secureText = true;
  TextEditingController _editController = TextEditingController();

  void _login() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const introPage3()));
  }

  void _back() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const introPage3()));
  }

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
          // SizedBox(height: 1),
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
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 48,
                      color: Color(0xFF4DACB2), 
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Sign in to continue",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFABABAB), 
                    ),
                  ),
                )
              ],
            )
          ),
          
          SizedBox(height: 10),

          Container(
            child: Image.asset(
              'assets/images/loginpic.png',
            ),
          ),

          SizedBox(height: 10),
          
          Container(
            width: 300,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _editController,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      labelText: "Email",
                      errorText: null,
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4DACB2),
                      ),
                      // border: InputBorder.none,
                      // fillColor: Colors.grey,
                      // filled: true,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                      // border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4DACB2),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_secureText ? Icons.remove_red_eye : Icons.visibility_off),
                        onPressed: (){
                          setState(() {
                            _secureText = !_secureText;
                          });
                        },
                      ),
                    ),
                    // keyboardType: TextInputType.emailAddress,
                    obscureText: _secureText,
                    maxLength: 10,
                  ),

                SizedBox(height: 10),
                
                Container(
                  margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: _login,
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                          backgroundColor: const Color(0xff4DACB2), // Ubah warna teks
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: const Size(217, 51),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                ),


                // SizedBox(height: 10),

                Container(
                    width: 300,
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     color: Colors.black, // Warna outline
                    //     width: 2, // Ketebalan outline
                    //   ),
                    // ),
                    child: InkWell(
                    child: const Text(
                      textAlign: TextAlign.center,
                      'Forgot password?',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFABABAB),
                        ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const loginPage()));
                    },
                  ),
                ),

                ],
              )
            ),
          ),

        ],
      ),
    );
  }

}

