import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/editProfil.dart';

class case3 extends StatefulWidget {
  const case3({super.key});

  @override
  State<case3> createState() => case3State();
}

class case3State extends State<case3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
              padding: const EdgeInsets.symmetric(vertical:  10, horizontal: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30),

                  Container(
                    width: 500,
                    height: 40,
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     color: Colors.black,
                    //     width: 2,
                    //   )
                    // ),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        InkWell(
                          child: Text(
                            'Profil',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 500,
                    // height: 40,
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     color: Colors.black,
                    //     width: 2,
                    //   )
                    // ),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        InkWell(
                          child: Text(
                            'Werky Sihotang',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff000000)
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  Container(
                    width: 500,
                    // height: 40,
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     color: Colors.black,
                    //     width: 2,
                    //   )
                    // ),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        InkWell(
                          child: Text(
                            'werkysonjesus@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffFFFFFF)
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 55),

                  Container(
                    padding: EdgeInsets.all(7.0),
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     color: Colors.black,
                    //     width: 2,
                    //   )
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        InkWell(
                          child: const Text(
                            'Account',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // onTap: (){
                          //   Navigator.push(
                          //     context, 
                          //     MaterialPageRoute(
                          //       builder: (context) => const loginPage()));
                          // },
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 15),

                  Container(
                    width: 300,
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),

                        SizedBox(width: 10),

                        InkWell(
                          child: const Text(
                            'Edit Profil',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => const editProfil()));
                          },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    width: 300,
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),

                        SizedBox(width: 10),

                        InkWell(
                          child: const Text(
                            'Favorit',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                            ),
                          ),
                          // onTap: (){
                          //   Navigator.push(
                          //     context, 
                          //     MaterialPageRoute(
                          //       builder: (context) => const loginPage()));
                          // },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    width: 300,
                    child: Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.black,
                        ),

                        SizedBox(width: 10),

                        InkWell(
                          child: const Text(
                            'About Us',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                            ),
                          ),
                          // onTap: (){
                          //   Navigator.push(
                          //     context, 
                          //     MaterialPageRoute(
                          //       builder: (context) => const loginPage()));
                          // },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    width: 300,
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout_rounded,
                          color: Color(0xffFF151A),
                        ),

                        SizedBox(width: 10),

                        InkWell(
                          child: const Text(
                            'Logout',
                            style: TextStyle(
                              color: Color(0xffFF151A),
                              fontSize: 16,
                            ),
                          ),
                          // onTap: (){
                          //   Navigator.push(
                          //     context, 
                          //     MaterialPageRoute(
                          //       builder: (context) => const loginPage()));
                          // },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}