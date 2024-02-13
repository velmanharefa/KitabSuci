import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/intropage2.dart';
import 'package:kitab_suci/screen/intropage3.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _back() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const introPage3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          
          SizedBox(height: 50),

          Container(
            child: Image.asset(
              'assets/images/loginpic.png',
            ),
          ),

          SizedBox(height: 50),
          
          // Container(
          //   width: 300,
          //   decoration: BoxDecoration(
          //     border: Border.all(
          //       color: Colors.black, // Warna outline
          //       width: 2, // Ketebalan outline
          //     ),
          //   ),
          //   child: Column(
              
          //     crossAxisAlignment:CrossAxisAlignment.start,
          //     children: [
          //       _buildGreyText("Enter email"),
          //       const SizedBox(height: 10,),
          //       _buildGreyText("Enter password"),
          //       _buildInputField(emailController),
          //     ]
          //     ),
          // ),
          

          // Container(
          //   width: 271,
          //   child: Column(
          //     children: [
          //       Container(
          //         alignment: Alignment.centerLeft,
          //         child: Text(
          //           "Enter email",
          //           style: TextStyle(
          //             fontSize: 14,
          //             color: Color(0xFFABABAB),
          //           ),
          //         ),
          //       ),
          //       Container(
          //         width: 271,
          //         // decoration: BoxDecoration(
          //         //   border: Border.all(
          //         //     color: Colors.black,
          //         //     width: 2,
          //         //   )
          //         // ),
          //         child: Divider(
          //           height: 20,
          //           color: Colors.black,
          //           thickness: 1,
          //         ),
          //       )
          //     ]
          //     ),
          // )
        ],
      ),
    );
  }

  Widget _buildForm(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 32,
          ),
        )
      ],
    );
  }

  Widget _buildGreyText(String text){
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget _buildInputField(TextEditingController controller, {isPassword = false}) {
    return TextField();
  }

}

