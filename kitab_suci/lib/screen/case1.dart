import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Case1 extends StatefulWidget {
  const Case1({Key? key}) : super(key: key);

  @override
  State<Case1> createState() => _Case1State();
}

class _Case1State extends State<Case1> {
  bool _isAlkitabSelected = false;
  TextEditingController _searchController = TextEditingController();
  TextEditingController _chapterController = TextEditingController();
  TextEditingController _verseController = TextEditingController();
  FocusNode _hiddenFocusNode = FocusNode(); // tambahkan hidden focus node

  void _notification() {
    // Fungsi untuk menangani notifikasi
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _chapterController.dispose();
    _verseController.dispose();
    _hiddenFocusNode.dispose(); // dispose hidden focus node
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {
      _isAlkitabSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Hide the keyboard when tapping outside of text fields
        FocusScope.of(context).requestFocus(_hiddenFocusNode); // gunakan hidden focus node
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
                    GestureDetector(
                      onTap: _notification,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF4DACB2),
                        ),
                        child: Icon(Icons.notifications_none_rounded,
                            color: Colors.white),
                      ),
                    ),
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
                child: _isAlkitabSelected ? AlkitabSearchWidget(
                  chapterController: _chapterController,
                  verseController: _verseController,
                  hiddenFocusNode: _hiddenFocusNode, // kirim hidden focus node ke AlkitabSearchWidget
                ) : _buildKitabCards(),
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

  Widget _buildKitabCards() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildKitabCard('Al-Quran'),
          _buildKitabCard('Weda'),
          _buildKitabCard('Tripitaka'),
          _buildKitabCard('Shishu Wujing'),
        ],
      ),
    );
  }

  Widget _buildKitabCard(String kitabName) {
    return SizedBox(
      height: 75,
      width: 350,
      child: InkWell(
        onTap: () {
          // Tindakan yang diambil saat kitab diklik
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.black),
          ),
          child: Center(
            child: Text(
              kitabName,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

class AlkitabSearchWidget extends StatelessWidget {
  final TextEditingController chapterController;
  final TextEditingController verseController;
  final FocusNode hiddenFocusNode; // tambahkan hidden focus node

  const AlkitabSearchWidget({
    required this.chapterController,
    required this.verseController,
    required this.hiddenFocusNode, // terima hidden focus node
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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
            // Daftar nama-nama kitab lainnya
          ].map((book) {
            return DropdownMenuItem<String>(
              value: book,
              child: Text(book),
            );
          }).toList(),
          onChanged: (String? value) {
            // Tindakan yang diambil saat kitab dipilih
          },
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // Mengatur fokus ke text field dan memunculkan keyboard
                  FocusScope.of(context).requestFocus(hiddenFocusNode);
                },
                child: TextFormField(
                  controller: chapterController,
                  maxLength: 2, // Batasi maksimal 2 digit angka
                  onChanged: (String value) {
                    // Tindakan yang diambil saat pasal diubah
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Pasal'),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly], // Gunakan input formatter untuk membatasi input hanya angka saat AlkitabSearchWidget aktif
                  readOnly: true, // Membuat TextFormField tidak dapat diedit langsung
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // Mengatur fokus ke text field dan memunculkan keyboard
                  FocusScope.of(context).requestFocus(hiddenFocusNode);
                },
                child: TextFormField(
                  controller: verseController,
                  maxLength: 2, // Batasi maksimal 2 digit angka
                  onChanged: (String value) {
                    // Tindakan yang diambil saat ayat diubah
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Ayat'),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  readOnly: true, // Membuat TextFormField tidak dapat diedit langsung
                ),
              ),
            ),
          ],
        ),
        NumericKeyboardWidget(
          onNumberSelected: (int number) {
            // Tindakan yang diambil saat angka dipilih
            if (chapterController.text.length < 2) {
              chapterController.text += number.toString();
            } else if (verseController.text.length < 2) {
              verseController.text += number.toString();
            }
          },
          onDelete: () {
            // Tindakan yang diambil saat tombol delete dipilih
            if (chapterController.text.isNotEmpty) {
              chapterController.text = chapterController.text.substring(0, chapterController.text.length - 1);
            } else if (verseController.text.isNotEmpty) {
              verseController.text = verseController.text.substring(0, verseController.text.length - 1);
            }
          },
          onConfirm: () {
            // Tindakan yang diambil saat tombol ceklis dipilih
          },
        ),
      ],
    );
  }
}

class NumericKeyboardWidget extends StatelessWidget {
  final Function(int) onNumberSelected;
  final Function() onDelete;
  final Function() onConfirm;

  NumericKeyboardWidget({
    required this.onNumberSelected,
    required this.onDelete,
    required this.onConfirm,
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
                  onPressed: () => onNumberSelected(i),
                ),
              IconButton(
                icon: Icon(Icons.cancel, color: Colors.red),
                onPressed: onDelete,
                iconSize: 25,
              ),
              NumericKey(
                number: 0,
                onPressed: () => onNumberSelected(0),
              ),
              IconButton(
                icon: Icon(Icons.check_circle, color: Colors.green),
                onPressed: onConfirm,
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
      body: Case1(),
    ),
  ));
}
