import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/intropage3.dart';
import 'package:kitab_suci/screen/homePage.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  void _back() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const introPage3()));
  }
  void _submit() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const homePage()));
  }
  bool _secureText = true;
  ScrollController _scrollController = ScrollController();
  @override
    void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _resetPosition() {
    _scrollController.animateTo(0.0,
        duration: Duration(milliseconds: 70), curve: Curves.easeInOut);
    FocusScope.of(context).unfocus();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: ()=> _resetPosition(),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
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
                      color: Color(0xFFABABAB),
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
                        "Pass!",
                        style: TextStyle(
                          fontSize: 48,
                          color: Color(0xFF4DACB2), 
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Change new password",
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
                  SizedBox(height: 30),
                  Container(
                margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: _submit,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                        backgroundColor: const Color(0xff4DACB2), // Ubah warna teks
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minimumSize: const Size(217, 51),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                ),
              SizedBox(height: 150)
                        ],
                      )
                  ),
                ]
              ),
          ),
        )
      );
  }
}