import 'package:flutter/material.dart';

import 'feedback.dart';

class OrderStatus extends StatefulWidget {
  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
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
          'Order History',
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
              itemCount: StatusModel.dummyData.length,
              itemBuilder: (context, index) {
                StatusModel _model = StatusModel.dummyData[index];
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
                        height: 70,
                        child: ListTile(
                          tileColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            //<-- SEE HERE
                            side: BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // leading: CircleAvatar(
                          //     backgroundImage: AssetImage(
                          //       _model.avatar,
                          //     ),
                          //     radius: 25),
                          title: Text(
                            _model.name,
                            style: const TextStyle(
                                color: Color.fromRGBO(187, 144, 45, 1),
                                fontSize: 16),
                            selectionColor: Color.fromRGBO(217, 217, 217, 1),
                          ),

                          subtitle: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Order Number: ${_model.order_number} ", style: TextStyle( fontSize: 12.0,color: Color.fromRGBO(50, 41, 57, 1))),
                                  Text("Details: ${_model.details} ",style: TextStyle( fontSize: 12.0,color: Color.fromRGBO(50, 41, 57, 1)) ),
                                  Text("Total: ${_model.price} ", style: TextStyle( fontSize: 12.0,color: Color.fromRGBO(50, 41, 57, 1)))
                                ],
                              ),
                              // Expanded(
                              //   child: Column(
                              //     crossAxisAlignment: CrossAxisAlignment.end,
                              //     children: [
                              //       Text(_model.status, style: TextStyle( fontSize: 12.0,color: Color.fromRGBO(125, 122, 8, 1)))
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                          ),
                          
                        ),

                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
                padding: EdgeInsetsDirectional.only(bottom: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(50, 41, 57, 1)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const FeedbackWidget()));
                  },
                  child: Text(
                    ' Leave Feedback',
                    style: TextStyle(
                        fontFamily: 'Barlow Semi Condensed',
                        color: Color.fromRGBO(240, 236, 207, 1)),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}

class StatusModel {
  
  final String name;
  final String details;
  final String order_number;
  final String price;

  StatusModel({ required this.name, required this.details, required this.order_number, required this.price});

  static final List<StatusModel> dummyData = [
    StatusModel(
        
        name: "Order summary",
        order_number: "Order #24", 
        details: "3 Dishes",
        price: "16000 RWF"),
    StatusModel(
        
         name: "Order summary",
        order_number: "Order #24", 
        details: "3 Dishes",
        price: "16000 RWF"),
    
    StatusModel(
        
         name: "Order summary",
        order_number: "Order #24", 
        details: "3 Dishes",
        price: "16000 RWF"),
    
  ];
}
