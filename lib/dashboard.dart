import 'package:flutter/material.dart';
import 'package:project/profile.dart';
import 'package:project/view.dart';



import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  
  
  final IconData icon1;
  final IconData icon2;

  const MyAppBar({Key? key, required this.icon1, required this.icon2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
  return AppBar(
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          IconButton(
            icon: Icon(icon1, color: Color(0xFFBB902D)),
            onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ViewOrder()));
            },
          ),
          IconButton(
            icon: Icon(icon2, color:  Color.fromRGBO(50, 41, 57, 1),),
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
        ],
      ),
      // Other actions, if any
    ],
    title: Text('Hi Timmy!',  style: TextStyle(
            fontFamily: 'Barlow Semi Condensed',
            color: Color.fromRGBO(50, 41, 57, 1),
            fontWeight: FontWeight.w900,
            fontSize: 18),
    ),
    backgroundColor: Color.fromRGBO(201, 199, 126, 1),
  );
}


  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}



class VerticalListItem {
  final String title;
  final List<HorizontalListItem> horizontalList;

  VerticalListItem({required this.title, required this.horizontalList});
}

class HorizontalListItem {
  final String avatar;

  HorizontalListItem({required this.avatar});
}

class Dashboard extends StatelessWidget {
  final List<VerticalListItem> verticalList = [
    VerticalListItem(
      title: 'Dyners',
      horizontalList: [
        HorizontalListItem(avatar: 'assets/images/burger.jpg'),
        HorizontalListItem(avatar: 'assets/images/chipsmasala.jpg'),
        HorizontalListItem(avatar: 'assets/images/croque.jpg'),
      ],
    ),
    VerticalListItem(
      title: 'Meze Fresh',
      horizontalList: [
        HorizontalListItem(avatar: 'assets/images/tacos.jpg'),
        HorizontalListItem(avatar: 'assets/images/burrito.jpg'),
        HorizontalListItem(avatar: 'assets/images/chicken.jpg'),
      ],
    ),

    VerticalListItem(
      title: 'Davids Popcorn Place',
      horizontalList: [
        HorizontalListItem(avatar: 'assets/images/Rice.jpg'),
        HorizontalListItem(avatar: 'assets/images/popcorn.jpg'),
        HorizontalListItem(avatar: 'assets/images/rice2.jpg'),
      ],
    ),
  ];


   Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: MyAppBar(icon1: Icons.shopping_cart, icon2: Icons.menu),

      backgroundColor: Color.fromRGBO(201, 199, 126, 1),
 body: Center(
  child: Column(
    children: [
      SizedBox(height: 52),
      Text(
        'What are you in the mood for today?',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
      SizedBox(height: 8),
      SizedBox(
        
        width: MediaQuery.of(context).size.width * 0.8,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(217,217,217,1),
            prefixIcon: Icon(Icons.search),
            hintText: 'Search Vendor',
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
                        )
            
          ),
        ),
      ),
      SizedBox(height: 16),
      Expanded(
        child: ListView.builder(
          itemCount: verticalList.length,
          itemBuilder: (context, index) {
            final verticalItem = verticalList[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Text(verticalItem.title, style: TextStyle(
              fontFamily: 'Barlow Semi Condensed',
              color: Color.fromRGBO(50, 41, 57, 1),
              fontWeight: FontWeight.w900,
              fontSize: 18),),
                const Divider(
                  height: 10,
                  //thickness: 3,
                ),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: verticalItem.horizontalList.length,
                    itemBuilder: (context, subIndex) {
                      final horizontalItem = verticalItem.horizontalList[subIndex];
                      return Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 20),
                              CircleAvatar(
                                backgroundImage: AssetImage(horizontalItem.avatar),
                                radius: 55,
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
      SizedBox(height: 30)
    ],
  ),
 ));

  }
}