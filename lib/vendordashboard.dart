import 'package:flutter/material.dart';
import 'package:project/accept.dart';
import 'package:project/ordercompleted.dart';
import 'package:project/vendorsettings.dart';


class VendorDash extends StatefulWidget {
  @override
  _VendorDashState createState() => _VendorDashState();
}

class _VendorDashState extends State<VendorDash> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          
          title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(width: 10),
            Text(''
              'Hi Dyners',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow Semi Condensed',
                 color: Color.fromRGBO(50, 41, 57, 1)
              ),
            ),
          ],
        ),
        leading: IconButton(
    icon: Icon(Icons.menu, color: Color.fromRGBO(50, 41, 57, 1),),
    onPressed: () {
      Navigator.push(context,
       MaterialPageRoute(builder: (context) =>  VendorMenu()));
    },
  ),
        backgroundColor: Color.fromRGBO(201, 199, 126, 1) ),
      
          
        backgroundColor: Color.fromRGBO(201, 199, 126, 1),


        body: Column(
          children: [
            

              SizedBox(height: 90),
            Container(
              decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
              child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'New',
                ),
                Tab(
                  text: 'Active',
                ),
                Tab(
                  text: 'Completed',
                )
              ],
               indicatorColor: Color.fromRGBO(125, 122, 8, 1)
                      ),
            ),
           Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(
                  child:
                   Container(
                    
                    color:  Color.fromRGBO(201, 199, 126, 0.35),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(vertical: 10.0),
                       child: ListView.builder(
                                       itemCount: 10,
                                       itemBuilder: (context, index) {
                        
                        return 
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AcceptOrder()));
                                          },
                          child: ListTile(
                            tileColor: Color.fromRGBO(201, 199, 126, 0.35),
                            title: Text('ORDER #24', style: TextStyle(
                                      color: Color.fromRGBO(50, 41, 57, 1),
                                      fontSize: 16, fontWeight: FontWeight.bold), ),
                            subtitle: 
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chicken Burger, Chips Masala, Mango Juice', style: TextStyle(
                                          color: Color.fromRGBO(50, 41, 57, 1))),
                                Text(' 10-03-2023 12-57 ', style: TextStyle(
                                          color: Color.fromRGBO(50, 41, 57, 1))
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                                ),
                                SizedBox(width: 10),
                                Text(''
                                  'Ordered by Timmy Turner',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Barlow Semi Condensed',
                                    color: Color.fromRGBO(50, 41, 57, 1)
                                  ),
                                ),
                              ],
                             )
                           ],
                           )
                                               ),
                        );
                                         },
                                       ),
                     ),
                  ),
                 ),

                
                ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index)
                 
                 {
                    return 
                    Container(
                      color:  Color.fromRGBO(201, 199, 126, 0.35),
                      child: 
                      GestureDetector(
                        onTap: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AcceptOrder()));
                                          },
                        child: ListTile(
                          tileColor: Color.fromRGBO(201, 199, 126, 0.35),
                          title: Text('ORDER #24', style: TextStyle(
                                    color: Color.fromRGBO(50, 41, 57, 1),
                                    fontSize: 16, fontWeight: FontWeight.bold), ),
                          subtitle: 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Chicken Burger, Chips Masala, Mango Juice', style: TextStyle(
                                        color: Color.fromRGBO(50, 41, 57, 1))),
                              Text(' 10-03-2023 12-57 ', style: TextStyle(
                                        color: Color.fromRGBO(50, 41, 57, 1))
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage('assets/images/profile.jpg'),
                              ),
                              SizedBox(width: 10),
                              Text(''
                                'Ordered by Timmy Turner',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Barlow Semi Condensed',
                                  color: Color.fromRGBO(50, 41, 57, 1)
                                ),
                              ),
                            ],
                           )
                         ],
                        )
                                           ),
                      ) 
                    );
                  },
                ),
                
                Container(
                  color:  Color.fromRGBO(201, 199, 126, 0.35),
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return 
                      GestureDetector(
                        onTap: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AcceptOrder()));
                                          },
                        child: ListTile(
                          tileColor: Color.fromRGBO(201, 199, 126, 0.35),
                          title: Text('ORDER #24', style: TextStyle(
                                    color: Color.fromRGBO(50, 41, 57, 1),
                                    fontSize: 16, fontWeight: FontWeight.bold), ),
                          subtitle: 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Chicken Burger, Chips Masala, Mango Juice', style: TextStyle(
                                        color: Color.fromRGBO(50, 41, 57, 1))),
                              Text(' 10-03-2023 12-57 ', style: TextStyle(
                                        color: Color.fromRGBO(50, 41, 57, 1))
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage('assets/images/profile.jpg'),
                              ),
                              SizedBox(width: 10),
                              Text(''
                                'Ordered by Timmy Turner',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Barlow Semi Condensed',
                                  color: Color.fromRGBO(50, 41, 57, 1)
                                ),
                              ),
                            ],
                           )
                         ],
                       )
                    ),
                      );
                    },
                  ),
                ),
              
                Container(
                  color:  Color.fromRGBO(201, 199, 126, 0.35),
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return 
                      GestureDetector(
                        onTap: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AcceptOrder()));
                                          },
                        child: ListTile(
                          tileColor: Color.fromRGBO(201, 199, 126, 0.35),
                          title: Text('ORDER #24', style: TextStyle(
                                    color: Color.fromRGBO(50, 41, 57, 1),
                                    fontSize: 16, fontWeight: FontWeight.bold), ),
                          subtitle: 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Chicken Burger, Chips Masala, Mango Juice', style: TextStyle(
                                        color: Color.fromRGBO(50, 41, 57, 1))),
                              Text(' 10-03-2023 12-57 ', style: TextStyle(
                                        color: Color.fromRGBO(50, 41, 57, 1))
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage('assets/images/profile.jpg'),
                              ),
                              SizedBox(width: 10),
                              Text(''
                                'Ordered by Timmy Turner',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Barlow Semi Condensed',
                                  color: Color.fromRGBO(50, 41, 57, 1)
                                ),
                              ),
                            ],
                           )
                         ],
                                           )
                                          ),
                      );
                    },
                  ),
                ),  
              ],
            ),
          ),
        ],
      ),
     ) );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}






        
        

        


        

        
                      

