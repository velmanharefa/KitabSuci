import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:kitab_suci/screen/editProfil.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class halo extends StatefulWidget {
  const halo({Key? key}) : super(key: key);

  @override
  State<halo> createState() => _haloState();
}

class _haloState extends State<halo> {
  void _notification() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const loginPage()));
  }
  
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          CustomPaint(size: Size(5000, 700),painter:BluePainter(),),
          _buildBody(),
          Align(
            alignment: Alignment.bottomCenter,
            child: CurvedNavigationBar(
              height: 55,
              backgroundColor: Colors.white,
              color: Color(0xFF4DACB2),
              animationDuration: Duration(milliseconds: 300),
              index: _currentIndex,
              onTap: (int newIndex) {
                setState(() {
                  _currentIndex = newIndex;
                });
              },
              // items: [
              //   Icon(Icons.home, size: 30),
              //   Icon(Icons.menu, size: 30),
              //   Icon(Icons.person, size: 30),
              // ],
              items: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Icon(
                  Icons.book_outlined, 
                  color: Colors.white,
                ),
                Icon(
                  Icons.signal_cellular_alt_outlined, 
                  color: Colors.white,
                ),
                Icon(
                  Icons.person, 
                  color: Colors.white,
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return Center(
          child: Container(
            child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:  10, horizontal: 20),
                    child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),
           
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditProfil()),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 85,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF4DACB2),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.menu_book_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'All',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ],
            ),
          ),
        ),
      );
      case 1:
        return Center(
          // child: TextFormField(
          //   decoration: InputDecoration(
          //     // https://www.youtube.com/watch?v=yumtaMvUnC8&ab_channel=TheTechBrothers
          //     hintText: 'Search bible, verses...',
          //     // fillColor: Colors.black,
          //     border: InputBorder.none,
          //     // border: const OutlineInputBorder(),
          //     contentPadding: EdgeInsets.all(14),
          //     prefixIcon: Icon(Icons.search),
          //   ),
          // ),
        );
      case 2:
        return Center(
         
        );
      case 3:
        return Center(
          child: Text(
            'Halo'
          ),
        );
      default:
        return Container(); // Return an empty container for unexpected index
    }
  } 
}

class EditProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: Text('This is the Edit Profile page'),
      ),
    );
  }
}