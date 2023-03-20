import 'package:flutter/material.dart';
import 'package:project/view.dart';



import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  
  final String imageUrl;
  final IconData icon1;
  final IconData icon2;

  const MyAppBar({Key? key, required this.imageUrl, required this.icon1, required this.icon2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Hi Timmy!',  style: TextStyle(
              fontFamily: 'Barlow Semi Condensed',
              color: Color.fromRGBO(50, 41, 57, 1),
              fontWeight: FontWeight.w900,
              fontSize: 22),),

      actions: [
        CircleAvatar(
          radius:60 ,
          backgroundImage: AssetImage(imageUrl),
        ),
        IconButton(
          icon: Icon(icon1, color: Color(0xFFBB902D)),
          onPressed: () {
            // Do something
          },
        ),
        IconButton(
          icon: Icon(icon2, color:  Color.fromRGBO(50, 41, 57, 1),),
          onPressed: () {
            // Do something
          },
        ),
      ],
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

      appBar: MyAppBar(icon1: Icons.menu, icon2: Icons.radio_button_off_outlined, imageUrl: 'assets/images/profile.jpg'),

      backgroundColor: Color.fromRGBO(201, 199, 126, 1),
      body:

      Center(
        child: ListView.builder(
      
          itemCount: verticalList.length,
          itemBuilder: (context, index) {
            final verticalItem = verticalList[index];
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Text(verticalItem.title),
                  const Divider(
                              height: 15,
                              //thickness: 3,
                            ),
                  SizedBox(
                    height: 100,
                    
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: verticalItem.horizontalList.length,
                      itemBuilder: (context, subIndex) {
                        final horizontalItem = verticalItem.horizontalList[subIndex];
                        return InkWell(
                          onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ViewOrder()));
                    },
            
                          
                            child: Row(
                              
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                    
                                    child: CircleAvatar(backgroundImage: AssetImage(horizontalItem.avatar) ,
                                    radius: 55)
                                    
                                                    ),
                                  ],
                                ),
                              ],
                            
                            )
                        );
                          
                      },
                  ),
                ),
              ],
            ),
          );
        },
          ),
      )
    );
    
 
  }
}
