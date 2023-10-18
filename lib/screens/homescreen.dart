import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin:const EdgeInsets.fromLTRB(20, 0, 20, 0),
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 5, 38, 88),
          ),
          child: const Icon(Icons.person, color: Colors.white, size: 30),
        ),
        actions: [
          /*Container(
              margin: EdgeInsets.fromLTRB(20,0,20,0),
              height:50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color:  Color.fromARGB(255, 5, 38, 88),
                
                
              ),
              child:const Icon(Icons.person,color: Colors.white,size: 30),
            )
          ,*/

          InkWell(
            onTap: () {},
            child: Container(
              margin:const EdgeInsets.fromLTRB(0, 0, 20, 0),
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 5, 38, 88),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 30),
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 2, 28, 66),
      ),
      backgroundColor: const Color.fromARGB(255, 2, 28, 66),
      body: Padding(
        padding:const EdgeInsets.all(20),
        child: CustomScrollView(
          slivers: [
            //GOOD MORNING TEXT
           const SliverAppBar(
              backgroundColor: Color.fromARGB(255, 2, 28, 66),
              elevation: 0,
              pinned: false,
              centerTitle: false,
              expandedHeight: 221,

              flexibleSpace: FlexibleSpaceBar(background: Column(
                children: [
                  Text(
                    'Good    Morning',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Monday',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '75% Done',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Oct 18 2023',
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 107, 107),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Completed Tasks',
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 107, 107),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),)
              
            ),
           SliverToBoxAdapter(
              child: 
              Padding(padding:const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
              children: [
                Container(
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child:Text('12',style: TextStyle(color:Color.fromARGB(255, 2, 28, 66),fontSize: 20 ),)
                  ),
                ),
               const SizedBox(width: 10,),
                const Text('Tasks',style: TextStyle(color:Colors.blueAccent,fontSize: 34),)
            
              ],
            )),
            ),
            //List View
            SliverList(
               
              delegate:
            SliverChildBuilderDelegate(
            (BuildContext context,int index){
              return Padding(padding:const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                width: MediaQuery.of(context).size.width,
                height: 200,
              ),);
            } ,
            childCount: 20  
            ))
          ],
        ),
      ),
    );
  }
}
