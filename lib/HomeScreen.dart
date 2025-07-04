import 'package:dmrc/To_Do_List.dart';
import 'package:dmrc/smart_Card.dart';
import 'package:flutter/material.dart';
import 'To_Do_List.dart';
import 'smart_Card.dart';

class GridItem {
  final IconData icon;
  final String title;
  final Color color;

  GridItem({required this.icon, required this.title, required this.color});
}

class HomeScreen extends StatelessWidget {
  final List<IconData> icons = List.generate(
    64,
    (index) => Icons.apps,
  ); // You can customize the icons list

  final List<GridItem> gridItems = [
    GridItem(icon: Icons.list, title: "To Do List", color: Colors.white),
    GridItem(icon: Icons.card_travel, title: "Metro Card", color: Colors.white),
    GridItem(icon: Icons.info, title: "About", color: Colors.white),
    GridItem(icon: Icons.settings, title: "Settings", color: Colors.white),
    GridItem(icon: Icons.contact_mail, title: "Contact", color: Colors.white),
    GridItem(icon: Icons.help, title: "Help", color: Colors.white),
    GridItem(icon: Icons.home, title: "Home", color: Colors.white),
    GridItem(icon: Icons.home, title: "Home", color: Colors.white),
    GridItem(icon: Icons.home, title: "Home", color: Colors.white),
    GridItem(icon: Icons.home, title: "Home", color: Colors.white),
    GridItem(icon: Icons.home, title: "Home", color: Colors.white),
    GridItem(icon: Icons.home, title: "Home", color: Colors.white),
    GridItem(icon: Icons.home, title: "Home", color: Colors.white),
    GridItem(icon: Icons.home, title: "Home", color: Colors.white),
    GridItem(icon: Icons.home, title: "Home", color: Colors.white),
    GridItem(icon: Icons.home, title: "Home", color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 71, 64, 64),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.person),
          color: Colors.lime,
        ),
        title: Text(
          'Hi Harsh',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        //centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 16, // 4 x 16 = 64
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 4 icons per row
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final item = gridItems[index];

            return GestureDetector(
              onTap: () {
                // ScaffoldMessenger.of(
                //   context,
                // ).showSnackBar(SnackBar(content: Text('Icon $index tapped')));
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ToDoList()),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SmartCard()),
                    );
                    break;
                  case 2:
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Info'),
                        content: Text('This is icon number $index'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                    break;
                  default:
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Icon $index tapped')),
                    );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: item.color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: item.color, width: 1.5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item.icon, size: 36, color: item.color),
                    SizedBox(height: 8),
                    Text(
                      item.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: item.color,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
