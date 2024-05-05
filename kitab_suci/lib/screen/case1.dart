import 'package:flutter/material.dart';

class Case1 extends StatefulWidget {
  const Case1({Key? key}) : super(key: key);

  @override
  State<Case1> createState() => _Case1State();
}

class _Case1State extends State<Case1> {
  bool _isAlkitabSelected = false;
  TextEditingController _searchController = TextEditingController();

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
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {
      _isAlkitabSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            SizedBox(height: 10),
            Expanded(
              child: _isAlkitabSelected ? AlkitabSearchWidget() : _buildKitabCards(),
            ),
          ],
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: 10),
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
              child: TextFormField(
                initialValue: '1',
                onChanged: (String value) {
                  // Tindakan yang diambil saat pasal diubah
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Pasal'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                initialValue: '1',
                onChanged: (String value) {
                  // Tindakan yang diambil saat ayat diubah
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Ayat'),
              ),
            ),
          ],
        ),
        // SizedBox(height: 20),
        NumericKeyboardWidget(
          onNumberSelected: (int number) {
            // Tindakan yang diambil saat angka dipilih
          },
          onDelete: () {
            // Tindakan yang diambil saat tombol delete dipilih
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
    height: 200, // Atur tinggi yang lebih kecil sesuai kebutuhan
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            for (int i = 1; i <= 9; i++)
              NumericKey(
                number: i,
                onPressed: () => onNumberSelected(i),
              ),
            NumericKey(
              number: 0,
              onPressed: () => onNumberSelected(0),
            ),
            IconButton(
              icon: Icon(Icons.cancel, color: Colors.red),
              onPressed: onDelete,
            ),
            IconButton(
              icon: Icon(Icons.check_circle, color: Colors.green),
              onPressed: onConfirm,
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
