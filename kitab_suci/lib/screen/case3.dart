import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/homePage.dart';


class case3 extends StatefulWidget {
  const case3({super.key});

  @override
  State<case3> createState() => case3State();
}

class case3State extends State<case3> {
  bool _isEditingProfile = false;
  bool _isFavorite = false;
  bool _isAboutUs = false;
  bool _secureText = true;
  TextEditingController _editController = TextEditingController();
  
  // void _back() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => homepage()));
  // }

  void _ubahAcount() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const homepage()));
  }

  @override
  Widget build(BuildContext context) {
    if (_isEditingProfile) {
      return _buildEditProfileContent();
    } else if (_isFavorite) {
      return _buildFavoriteContent();
    } else if (_isAboutUs) {
      return _buildAboutUsContent();
    } else {
      return _buildOriginalContent();
    }
  }

  Widget _buildOriginalContent() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:  10, horizontal: 20),
        child: Column(
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
                    onTap: () {
                    setState(() {
                      _isEditingProfile = true;
                    });
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
                      'Favorite',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _isFavorite = true;
                      });
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
                    onTap: () {
                    setState(() {
                      _isAboutUs = true;
                    });
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

  Widget _buildEditProfileContent() {
  return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:  10, horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),

            Container(
              width: 500,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // IconButton(
                  // icon: const Icon(Icons.arrow_back),
                  // onPressed: _back,
                  // ),
                  InkWell(
                    child: Text(
                      'Edit Profil',
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
              child: Row(
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
            SizedBox(height: 90),


          Container(
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.black,
            //     width: 2,
            //   )
            // ),
            width: 320,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _editController,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      labelText: "Werky Sihotang",
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
                    controller: _editController,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      labelText: "Werky",
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
                    controller: _editController,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      labelText: "werkysonjesus@gmail.com",
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
                      labelText: "Enter new password",
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
                        onPressed: _ubahAcount,
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                          backgroundColor: const Color(0xff4DACB2), // Ubah warna teks
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: const Size(217, 51),
                        ),
                        child: const Text(
                          'Change Account',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                ),

                ],
              )
            ),
          ),
          ],
        ),
      ),
    );
}

  Widget _buildFavoriteContent() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:  10, horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),

            Container(
              width: 500,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  InkWell(
                    child: Text(
                      'Favorite',
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
              child: Row(
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
            SizedBox(height: 60),

            Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: TextFormField(
                      
                      decoration: InputDecoration(
                        // https://www.youtube.com/watch?v=yumtaMvUnC8&ab_channel=TheTechBrothers
                        hintText: 'Search bible, verses...',
                        // fillColor: Colors.black,
                        border: InputBorder.none,
                        // border: const OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(14),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  // favorite container
                  Container(
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alkitab',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                              ),
                              Icon(Icons.favorite, color: Color(0xFFFF0000), size: 30,),
                            ]
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => loginPage()),
                      //   );
                      // },
                      child: Container(
                        alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text(
                              //   'Alkitab',
                              //     style: TextStyle(
                              //       color: Color(0xFF000000),
                              //       fontSize: 20,
                              //       fontWeight: FontWeight.w600,
                              //     ),
                              // ),
                              // Icon(Icons.more_horiz, color: Colors.black, size: 15,),
                              Text(
                                'Lukas 1 : 2',
                                  style: TextStyle(
                                    color: Color(0xFF8A8A8A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),
                              Text(
                                'Aku berkata kepadamu : Demikian juga akan ada sukacita di sorga karena satu ',
                                  style: TextStyle(
                                    color: Color(0xFF8A8A8A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                              ),
                              GestureDetector(
                                // onTap: _notification,
                                child: Container(
                                  width: 15, 
                                  height: 15, 
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFD9D9D9),
                                    // color: Colors.grey[200], 
                                  ),
                                  child: Icon(Icons.more_horiz, color: Colors.black, size: 15,),
                                ),
                              ),  
                            ],
                          ),
                          
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  // favorite container
                  Container(
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alkitab',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                              ),
                              Icon(Icons.favorite, color: Color(0xFFFF0000), size: 30,),
                            ]
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => loginPage()),
                      //   );
                      // },
                      child: Container(
                        alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text(
                              //   'Alkitab',
                              //     style: TextStyle(
                              //       color: Color(0xFF000000),
                              //       fontSize: 20,
                              //       fontWeight: FontWeight.w600,
                              //     ),
                              // ),
                              // Icon(Icons.more_horiz, color: Colors.black, size: 15,),
                              Text(
                                'Lukas 1 : 2',
                                  style: TextStyle(
                                    color: Color(0xFF8A8A8A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),
                              Text(
                                'Aku berkata kepadamu : Demikian juga akan ada sukacita di sorga karena satu ',
                                  style: TextStyle(
                                    color: Color(0xFF8A8A8A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                              ),
                              GestureDetector(
                                // onTap: _notification,
                                child: Container(
                                  width: 15, 
                                  height: 15, 
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFD9D9D9),
                                    // color: Colors.grey[200], 
                                  ),
                                  child: Icon(Icons.more_horiz, color: Colors.black, size: 15,),
                                ),
                              ),  
                            ],
                          ),
                          
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutUsContent() {
  return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:  10, horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),

            Container(
              width: 500,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  InkWell(
                    child: Text(
                      'About Us',
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
              child: Row(
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
            SizedBox(height: 75),

            Container(
            alignment: Alignment.center,
            width: 500,
            padding: EdgeInsets.all(5),
            

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Kami dari Kitab Suci👋",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          
                SizedBox(
                  height: 20
                ),
                
                Text(
                  "Aplikasi ini dikembangkan berdasarkan keinginan kami dari tim Kitab Suci untuk menggabungkan seluruh kitab suci agama yang ada di Indonesia menjadi satu aplikasi yang mudah digunakan dan dapat diakses kapan pun. Kami sangat berterima kasih kepada seluruh pihak yang bergabung dalam pembuatan aplikasi ini sehingga dapat berjalan sebagaimana mestinya. Kami dari tim Kitab Suci akan terus mengembangkan dan memperbarui aplikasi kami sehingga tetap terkini dan nyaman digunakan. Sekian Terima kasih 🙏.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                  ),
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