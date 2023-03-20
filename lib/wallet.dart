import 'package:flutter/material.dart';


class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          
          title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
            // Add your navigation drawer or menu logic here
          },
          ),
        backgroundColor: Color.fromRGBO(201, 199, 126, 1) ),
      
          
        backgroundColor: Color.fromRGBO(201, 199, 126, 1),


        body: Column(
          children: [
            SizedBox(height: 16),
            SizedBox(
              child: Title( child: Text('My Wallet', 
              style: TextStyle(fontFamily: 'Barlow Semi Condensed',
              fontWeight: FontWeight.w900,
              fontSize: 32), 
             ), color: Color.fromRGBO(50, 41, 57, 1),),
            ),
            SizedBox(height: 16),
            SizedBox(
              child: Text('94,000 Rwf', style: TextStyle(fontFamily: 'Barlow Semi Condensed',
                fontWeight: FontWeight.w900,
                fontSize: 40, color: Color.fromRGBO(187, 144, 45, 1))),
            ),

              SizedBox(height: 30),
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
                  text: 'Today',
                ),
                Tab(
                  text: 'Week',
                ),
                Tab(
                  text: 'Month',
                ),
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
                     child: ListView.builder(
                                     itemCount: 10,
                                     itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Color.fromRGBO(201, 199, 126, 0.35),
                        title: Text('Chicken Burger, Fries, Mango Juice ', style: TextStyle(
                                  color: Color.fromRGBO(50, 41, 57, 1),
                                  fontSize: 16),),
                        subtitle: Text(' 10-03-2023 12-57 ', style: TextStyle(
                                  color: Color.fromRGBO(50, 41, 57, 1)),
                       )
                      );
                                     },
                                   ),
                   ),
                ),
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index)
                 
                 {
                    return 
                    Container(
                      color:  Color.fromRGBO(201, 199, 126, 0.35),
                      child: ListTile(
                         tileColor: Color.fromRGBO(201, 199, 126, 0.35),
                        title: Text('Chicken Burger, Fries, Mango Juice ${index+1}', style: TextStyle(
                                  color: Color.fromRGBO(50, 41, 57, 1),
                                  fontSize: 16),),
                        subtitle: Text(' 10-03-2023 12-57  ${index+1}', style: TextStyle(
                                  color: Color.fromRGBO(50, 41, 57, 1)),
                       )),
                    );
                  },
                ),
                Container(
                  color:  Color.fromRGBO(201, 199, 126, 0.35),
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Color.fromRGBO(201, 199, 126, 0.35),
                        title: Text('Chicken Burger, Fries, Mango Juice ${index+1}', style: TextStyle(
                                  color: Color.fromRGBO(50, 41, 57, 1),
                                  fontSize: 16),),
                        subtitle: Text(' 10-03-2023 12-57  ${index+1}', style: TextStyle(
                                  color: Color.fromRGBO(50, 41, 57, 1)),
                       )
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






        
        

        


        

        
                      

