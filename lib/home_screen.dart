import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Icon(Icons.camera_alt),
              Text('Chat'),
              Text('Status'),
            Text('Calls'),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 20,),
          PopupMenuButton(

            icon: const Icon(Icons.more_vert_outlined),

       itemBuilder: (context) =>[
          const PopupMenuItem(
            value: 1,
              child: Text('New Group')
          ),

         const PopupMenuItem(
             value: 2,
             child: Text('setting'),
         ),
         const PopupMenuItem(
             value: 3,
             child: Text('Logout')

      )
          ]
          )
          ]),
        body: TabBarView(
          children: [
            const Text('Camera'),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index){
                return ListTile(

                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https'),
                  ),


                  title: Text('Qazafi'),
                  subtitle: Text('How are you?'),
                  trailing: Text('6:30 PM'),
                );
              }
            ),

            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return ListTile(

                    leading: CircleAvatar(
                      backgroundColor: Colors.deepOrange,
                      backgroundImage: NetworkImage('https'),
                    ),


                    title: Text('Qazafi'),
                    subtitle: Text('35 min ago'),
                    trailing: Text('6:30 PM'),

                  );
                }
            ),

            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return ListTile(

                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https'),
                    ),


                    title: Text('Qazafi'),
                    subtitle:Text('You missed a call'),
                    trailing: Icon(Icons.phone),
                    );


                }
            ),
          ],
        ),

      ),
    );
  }
}
