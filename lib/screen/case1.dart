import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FavoriteIcon extends StatefulWidget {
  final ValueNotifier<bool> isFavorited;
  final VoidCallback? onPressed;

  const FavoriteIcon({
    required this.isFavorited,
    this.onPressed, // Deklarasikan parameter onPressed
    Key? key,
  }) : super(key: key);

  @override
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: widget.isFavorited,
      builder: (context, isFavorited, _) {
        return InkWell(
          onTap: () {
            widget.isFavorited.value = !isFavorited;
            if (widget.onPressed != null) {
              widget.onPressed!();
            }
          },
          child: Stack(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 24,
              ),
              if (isFavorited)
                Positioned.fill(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class case1 extends StatefulWidget {
  const case1({Key? key}) : super(key: key);

  @override
  State<case1> createState() => _case1State();
}

class _case1State extends State<case1> {
  int _currentChapter = 1;
  bool _isAlkitabSelected = false;
  bool _isContentDisplayed = false;
  List<ValueNotifier<bool>> _favoriteStatusList = [];
  List<bool> _isVisibleList = []; // Menambah deklarasi variabel _isVisibleList
  TextEditingController _searchController = TextEditingController();
  TextEditingController _chapterController = TextEditingController();
  TextEditingController _verseController = TextEditingController();
  FocusNode _hiddenFocusNode = FocusNode(); 
  FocusNode _chapterFocusNode = FocusNode(); 
  FocusNode _verseFocusNode = FocusNode(); 
  List<String> textList = [
    'Pada mulanya Allah menciptakan langit dan bumi.',
    'Bumi belum berbentuk dan kosong; gelap gulita menutupi samudera raya, dan Roh Allah melayang-layang di atas permukaan air.',
    'Berfirmanlah Allah: "Jadilah terang." Lalu terang itu jadi.',
    'Allah melihat bahwa terang itu baik, lalu dipisahkan-Nyalah terang itu dari gelap.',
    'Dan Allah menamai terang itu siang, dan gelap itu malam. Jadilah petang dan jadilah pagi, itulah hari pertama.',
    'Berfirmanlah Allah: "Jadilah cakrawala di tengah segala air untuk memisahkan air dari air."',
    'Maka Allah menjadikan cakrawala dan Ia memisahkan air yang ada di bawah cakrawala itu dari air yang ada di atasnya. Dan jadilah demikian.'
    'Lalu Allah menamai cakrawala itu langit. Jadilah petang dan jadilah pagi, itulah hari kedua.'
  ];

  void _incrementChapter() {
    setState(() {
      _currentChapter++;
    });
  }

  void _decrementChapter() {
    setState(() {
      if (_currentChapter > 1) {
        _currentChapter--;
      }
    });
  }

  void _notification() {
    // Fungsi untuk menangani notifikasi
  }

  @override
  void initState() {
  super.initState();
  _favoriteStatusList = List.generate(textList.length, (_) => ValueNotifier<bool>(false));
  }

  @override
  void dispose() {
    _searchController.dispose();
    _chapterController.dispose();
    _verseController.dispose();
    _hiddenFocusNode.dispose(); 
    _chapterFocusNode.dispose(); 
    _verseFocusNode.dispose(); 
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {
      _isAlkitabSelected = false;
    });
  }

  void _setIsVisible(int index, bool isVisible) {
    setState(() {
      _isVisibleList[index] = isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(_hiddenFocusNode); 
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              Container(
                width: 500,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Text(
                        'Hello, User',
                        style: TextStyle(fontSize: 32, color: Color(0xff000000)),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: _notification,
                    //   child: Container(
                    //     width: 40,
                    //     height: 40,
                    //     decoration: BoxDecoration(
                    //       shape: BoxShape.circle,
                    //       color: Color(0xFF4DACB2),
                    //     ),
                    //     child: Icon(Icons.notifications_none_rounded,
                    //         color: Colors.white),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Container(
                width: 500,
                height: 25,
                child: Text(
                  'let’s read some word of God',
                  style: TextStyle(fontSize: 16, color: Color(0xff000000)),
                ),
              ),
              SizedBox(height: 20),
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
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search bible, verses...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(14),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(height: 25),
              _isAlkitabSelected ? Container() : _buildAlkitabButton(),
              Expanded(
                child: _isAlkitabSelected
                    ? _isContentDisplayed 
                        ? _buildNewContent(context)
                        : AlkitabSearchWidget(
                            chapterController: _chapterController,
                            verseController: _verseController,
                            hiddenFocusNode: _hiddenFocusNode,
                            chapterFocusNode: _chapterFocusNode,
                            verseFocusNode: _verseFocusNode,
                            onContentDisplayed: () {
                              setState(() {
                                _isContentDisplayed = true; 
                              });
                            },
                          )
                    : _buildKitabCards(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAlkitabButton() {
    return InkWell(
      onTap: () {
        setState(() {
          _isAlkitabSelected = true;
        });
      },
      child: Container(
        height: 65,
        width: 350,
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
              'Alkitab',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF000000),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildNewContent(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: _decrementChapter,
              ),
              Text(
                'Kejadian $_currentChapter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: _incrementChapter,
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < textList.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${i + 1} ',
                            style: TextStyle(fontSize: 16, color: Color(0xFF32E5E5)), // Warna teks angka list
                          ),
                          Expanded(
                            child: Text(
                              textList[i],
                              style: TextStyle(fontSize: 16, color: Colors.black), // Warna teks isi list
                            ),
                          ),
                          SizedBox(width: 10), // Jarak antara teks dan ikon
                          FavoriteIcon(
                            isFavorited: _favoriteStatusList[i],
                          ),
                          
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
  Widget _buildKitabCards() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 7),
          _buildKitabCard('Al-Quran'),
          SizedBox(height: 7),
          _buildKitabCard('Weda'),
          SizedBox(height: 7),
          _buildKitabCard('Tripitaka'),
          SizedBox(height: 7),
          _buildKitabCard('Shishu Wujing'),
        ],
      ),
    );
  }

  Widget _buildKitabCard(String kitabName) {
    return SizedBox(
      height: 65,
      width: 350,
      child: InkWell(
        onTap: () {
          // Tindakan yang diambil saat kitab diklik
        },
        child: Container(
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
                kitabName,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}

class AlkitabSearchWidget extends StatelessWidget {
  final TextEditingController chapterController;
  final TextEditingController verseController;
  final FocusNode hiddenFocusNode;
  final FocusNode chapterFocusNode;
  final FocusNode verseFocusNode;
  final Function() onContentDisplayed; 

  const AlkitabSearchWidget({
    required this.chapterController,
    required this.verseController,
    required this.hiddenFocusNode,
    required this.chapterFocusNode,
    required this.verseFocusNode,
    required this.onContentDisplayed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Alkitab",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 10),
        DropdownButtonFormField<String>(
          value: 'Kejadian',
          items: [
            'Kejadian',
            'Keluaran',
            'Imamat',
          ].map((book) {
            return DropdownMenuItem<String>(
              value: book,
              child: Text(book),
            );
          }).toList(),
          onChanged: (String? value) {
          },
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  chapterFocusNode.requestFocus();
                },
                child: TextFormField(
                  controller: chapterController,
                  focusNode: chapterFocusNode,
                  maxLength: 2, 
                  onChanged: (String value) {
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Pasal'),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly], 
                  readOnly: true, 
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  verseFocusNode.requestFocus();
                },
                child: TextFormField(
                  controller: verseController,
                  focusNode: verseFocusNode,
                  maxLength: 2, 
                  onChanged: (String value) {
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Ayat'),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  readOnly: true, 
                ),
              ),
            ),
          ],
        ),
        NumericKeyboardWidget(
          onNumberSelected: (int number) {
            if (chapterFocusNode.hasFocus) {
              if (chapterController.text.length < 2) {
                chapterController.text += number.toString();
              }
            } else if (verseFocusNode.hasFocus) {
              if (verseController.text.length < 2) {
                verseController.text += number.toString();
              }
            }
          },
          onDelete: () {
            if (chapterController.text.isNotEmpty && chapterFocusNode.hasFocus) {
              chapterController.text = chapterController.text.substring(0, chapterController.text.length - 1);
            } else if (verseController.text.isNotEmpty && verseFocusNode.hasFocus) {
              verseController.text = verseController.text.substring(0, verseController.text.length - 1);
            }
          },
          onConfirm: () {
          },
          chapterFocusNode: chapterFocusNode,
          verseFocusNode: verseFocusNode,
          onContentDisplayed: onContentDisplayed,
        ),
      ],
    );
  }
}

class NumericKeyboardWidget extends StatelessWidget {
  final Function(int) onNumberSelected;
  final Function() onDelete;
  final Function() onConfirm;
  final FocusNode chapterFocusNode;
  final FocusNode verseFocusNode;
  final Function() onContentDisplayed;

  NumericKeyboardWidget({
    required this.onNumberSelected,
    required this.onDelete,
    required this.onConfirm,
    required this.chapterFocusNode,
    required this.verseFocusNode,
    required this.onContentDisplayed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 1.8,
            children: [
              for (int i = 1; i <= 9; i++)
                NumericKey(
                  number: i,
                  onPressed: () {
                    if (chapterFocusNode.hasFocus) {
                      onNumberSelected(i);
                    } else if (verseFocusNode.hasFocus) {
                      onNumberSelected(i);
                    }
                  },
                ),
              IconButton(
                icon: Icon(Icons.cancel, color: Colors.red),
                onPressed: onDelete,
                iconSize: 25,
              ),
              NumericKey(
                number: 0,
                onPressed: () {
                  if (chapterFocusNode.hasFocus) {
                    onNumberSelected(0);
                  } else if (verseFocusNode.hasFocus) {
                    onNumberSelected(0);
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.check_circle, color: Colors.green),
                onPressed: onContentDisplayed, 
                iconSize: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NumericKey extends StatelessWidget {
  final int number;
  final VoidCallback onPressed;

  NumericKey({required this.number, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 50,
      height: 50,
      onPressed: onPressed,
      child: Text(
        '$number',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: case1(),
    ),
  ));
}
