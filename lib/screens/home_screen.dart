import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  Column _buildCard(String ctitle, IconData cicon, String shortdes ){

    return
      // Center(
      // child: Card(
      //   child:
     Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             ListTile(
              leading: Icon(cicon),
              title: Text(ctitle),
              subtitle: Text(shortdes),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('Learn More'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                // TextButton(
                //   child: const Text('Whatsapp'),
                //   onPressed: () {/* ... */},
                // ),
                // const SizedBox(width: 8),
              ],
            ),
          ],
        );
    //   ),
    // );
   }

   Column _buildButtonColumn(Color color, IconData icon, String label) {
     return Column(
       mainAxisSize: MainAxisSize.min,
       mainAxisAlignment: MainAxisAlignment.center,
       
       children: [
         SizedBox.fromSize(
           size: Size(70 , 70),
           child: ClipOval(
             child: Material(
               color: Colors.amberAccent,
               child: InkWell(
                 splashColor: Colors.green,
                 onTap: () {},
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Icon(icon, color: color), // <-- Icon
                     Container(

                       margin: const EdgeInsets.only(top: 8),
                       child: Text(
                         label,

                         style: TextStyle(
                           fontSize: 12,
                           fontWeight: FontWeight.w400,
                           color: color,

                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),
         )
       ],
     );
   }


  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [

        _buildButtonColumn(color, Icons.hiking, 'Travel'),
        _buildButtonColumn(color, Icons.kitchen, 'Cook'),
        _buildButtonColumn(color, Icons.book, 'Learning'),
        _buildButtonColumn(color, Icons.sports_gymnastics, 'Sports'),

      ],
    );
    Widget ramdomCardSection = _buildCard("How To make a Pizza", Icons.local_pizza, "I will teach you  how to make a pizza in 3 days.");
    Widget ramdomCardSection1 = _buildCard("How To make a bread", Icons.breakfast_dining, "I will teach you  how to make a bread in 3 days.");


    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          children:  <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,

                ),

              ),
            ),
            ElevatedButtonTheme(
              data: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(minimumSize: Size(113,45))) ,
              child: ButtonBar(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(
                    child: Text('Discover'),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text('Trening'),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text('My Lessons'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Text(
                'Category',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            buttonSection,
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                    'Learning',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ),
                Container(
                  height: 100,
                  width: 50,
                ),
                Expanded(
                    child: Text(
                      'View more',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
            ramdomCardSection,
            ramdomCardSection1,
            ramdomCardSection1,
            ramdomCardSection1,
            ramdomCardSection1,

          ],
        ),
      ),

    );
  }
}


