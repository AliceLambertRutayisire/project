import 'package:flutter/material.dart';
import 'package:project/paymt.dart';

class OrderInfo extends StatefulWidget {
  @override
  _OrderInfoState createState() => _OrderInfoState();
}

class _OrderInfoState extends State<OrderInfo> {
  @override
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Order Info',
          style: TextStyle(
              fontFamily: 'Barlow Semi Condensed',
              color: Color.fromRGBO(50, 41, 57, 1),
              fontWeight: FontWeight.w900,
              fontSize: 32),
        ),
        backgroundColor: Color.fromRGBO(201, 199, 126, 1),
      ),
      backgroundColor: Color.fromRGBO(201, 199, 126, 1),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: ViewModel.dummyData.length,
              itemBuilder: (context, index) {
                ViewModel _model = ViewModel.dummyData[index];
                color:
                _selectedIndex != null && _selectedIndex == index
                    ? Color.fromRGBO(217, 217, 217, 1)
                    : Color.fromRGBO(187, 144, 45, 1);

                return SizedBox(
                  height: 100,
                  //width: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Divider(
                        height: 15,
                        //thickness: 3,
                      ),
                      SizedBox(
                        width: 850,
                        child: ListTile(
                          tileColor: Color.fromRGBO(187, 144, 45, 1),
                          shape: RoundedRectangleBorder(
                            //<-- SEE HERE
                            side: BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                _model.avatar,
                              ),
                              radius: 25),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                _model.name,
                                style: TextStyle(
                                    color: Color.fromRGBO(50, 41, 57, 1),
                                    fontSize: 16),
                                selectionColor:
                                    Color.fromRGBO(217, 217, 217, 1),
                              ),
                              SizedBox(
                                width: 70,
                                height: 66,
                              ),
                              Text(
                                _model.price,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color.fromRGBO(217, 217, 217, 1)),
                              ),
                            ],
                          ),
                          onTap: () => _onSelected(index),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ViewModel {
  final String avatar;
  final String name;
  final String price;

  ViewModel({required this.avatar, required this.name, required this.price});

  static final List<ViewModel> dummyData = [
    ViewModel(
        avatar: "assets/images/burger.jpg",
        name: "Chicken Burger x2",
        price: "6000 RWF"),
    ViewModel(
        avatar: "assets/images/chipsmasala.jpg",
        name: "Chips Masala x 1",
        price: "2500 RWF"),
    ViewModel(
        avatar: "assets/images/mangojuice.jpg",
        name: "Mango Juice x 1",
        price: '2500 RWF'),
    ViewModel(
        avatar: "assets/images/croque.jpg",
        name: "Croque Monsieur x 1",
        price: '2500 RWF')
  ];
}
