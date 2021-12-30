import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: Home(),
    // home: CardApp(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int status = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("ID App"),
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey[850],
        onPressed: () {
          setState(() {
            status++;
          });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(),
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.w3schools.com/howto/img_avatar.png"),
                radius: 30,
              ),
            ),
            const Divider(
              height: 20,
            ),
            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1,
                fontSize: 12,
              ),
            ),
            const Text(
              "Abcd xyz",
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 1,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "STATUS",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1,
                fontSize: 12,
              ),
            ),
            Text(
              "$status",
              style: const TextStyle(
                color: Colors.amber,
                letterSpacing: 1,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(Icons.mail, color: Colors.amberAccent),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "com.test.testapp",
                  style: TextStyle(
                      color: Colors.grey, fontSize: 12, letterSpacing: 2),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class CardApp extends StatelessWidget {
//   const CardApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 40,
//         elevation: 0,
//       ),
//       body:  Container(
//         margin: const EdgeInsets.all(10),
//         child: Container(
//           decoration: BoxDecoration(
//             border: Border.all()
//           ),

//         ),
//       ),
//     );
//   }
// }
