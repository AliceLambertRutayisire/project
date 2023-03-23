import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
          'Order Summary',
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
              itemCount: OrderModel.dummyData.length,
              itemBuilder: (context, index) {
                OrderModel _model = OrderModel.dummyData[index];
                color:
                _selectedIndex != null && _selectedIndex == index
                    ? Color.fromRGBO(217, 217, 217, 1)
                    : Color.fromRGBO(187, 144, 45, 1);

                return SizedBox(
                  height: 160,
                  //width: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Divider(
                        height: 30,
                        //thickness: 3,
                      ),
                      SizedBox(
                        width: 850,
                        height: 90,
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
                            style: TextStyle(
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
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    
                                    Text(_model.date ,  style: TextStyle( fontSize: 12.0,color: Color.fromRGBO(50, 41, 57, 1)) ),
                                    Text(_model.status, style: TextStyle( fontSize: 12.0,color: Color.fromRGBO(125, 122, 8, 1)))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // subtitle: Column(
                  
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text("Order Number: ${_model.order_number} ", style: TextStyle( fontSize: 12.0,color: Color.fromRGBO(50, 41, 57, 1))),
                          //     Text("Details: ${_model.details} ",style: TextStyle( fontSize: 12.0,color: Color.fromRGBO(50, 41, 57, 1)) ),
                          //     Text("Total: ${_model.price} ", style: TextStyle( fontSize: 12.0,color: Color.fromRGBO(50, 41, 57, 1))),
                          //     Text("Date: ${_model.date} - Status: ${_model.status}", style: TextStyle( fontSize: 12.0,color: Color.fromRGBO(50, 41, 57, 1))),
                          //   ],
                            
                          // )
                          
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

class OrderModel {
  final String name;
  final String order_number;
  final String price;
  final String status;
  final String date;
  final String details;


  OrderModel({ required this.name, required this.details, required this.status, required this.order_number, required this.date, required this.price});

  static final List<OrderModel> dummyData = [
    OrderModel(
        name: "Order Summary",
        order_number: "#24",
        details: "3 Dishes", 
        price: "16000 RWF",
        status: "In the kitchen",
        date:" 12 -02-2023        "),
    OrderModel(
        name: "Order Summary",
        order_number: "#10",
        details: "2 Dishes",
        price: "12000 RWF",
        status: "Completed",
        date: "10 -02-2023        "),
    OrderModel(
        name: "Order Summary",
        order_number: "#2",
        details: "1 Dishes",
        price: "3000 RWF",
        status: "Cancelled",
        date:" 01 -02-2023        ")
  ];
}
