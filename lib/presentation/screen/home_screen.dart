import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_system/presentation/controller/pos_controller.dart';
import 'package:pos_system/data/model/pos_model.dart';

class HomeScreen extends StatefulWidget {
  final PosModel? cardModel;
  const HomeScreen({super.key, this.cardModel});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PosController posController = Get.find();
  List<PosModel> listAllPos = [];
  @override
  void initState() {
    posController.loadPos();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.yellow,
                      radius: 25,
                      child: Text('USER'),
                    ),
                    Text('Seng Visuth'),
                    Text('Suth7777@gmail.com')
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              height: 1.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.tealAccent,
            ),
            ListTile(
              title: const Text(
                "Learning",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.book),
              onTap: () {},
            ),
            Container(
              height: 1.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.tealAccent,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: const Text(
                  "Log Out",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: const Icon(Icons.logout),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "POS SYSTEM",
          style: TextStyle(color: Colors.orangeAccent, fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: Colors.red,
              height: 500,
              width: 400,
              child: GridView.count(
                crossAxisCount: 3, // Number of columns in the grid
                children: posController.listPosData.map((item) {
                  return GridTile(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 125,
                        height: 125,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 125,
                              height: 45,
                              child: Image.asset('images/img1.png'),
                            ),
                            SizedBox(
                              width: 125,
                              height: 50,
                              child: Column(
                                children: [
                                  Text(
                                    item.name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "\$ ${item.price}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
