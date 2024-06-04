import 'package:flutter/material.dart';
import 'package:myapp/clases/Chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Chat> chats = [
    Chat(name: 'Holamundo', lastMessage: 'gei', time: DateTime.now()),
    Chat(name: 'Holamundo', lastMessage: 'gei', time: DateTime.now()),
    Chat(name: 'Holamundo', lastMessage: 'gei', time: DateTime.now()),
    Chat(name: 'Holamundo', lastMessage: 'gei', time: DateTime.now()),
    Chat(name: 'Holamundo', lastMessage: 'gei', time: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsAppClone V0.1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Chat> chats = [
    Chat(name: 'Nikol la Puta', lastMessage: 'gei', time: DateTime.now()),
    Chat(name: 'mama burra 2.1', lastMessage: 'gei', time: DateTime.now()),
    Chat(name: 'El gei', lastMessage: 'gei', time: DateTime.now()),
    Chat(name: 'Franco', lastMessage: 'gei', time: DateTime.now()),
    Chat(name: 'Juan Nada', lastMessage: 'gei', time: DateTime.now()),
    Chat(name: 'Juan', lastMessage: 'Hola don Pepito,Hola don jose ', time: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            child: Text(chats[index].name[0]),
          ),
          title: Text(chats[index].name),
          subtitle: Text(chats[index].lastMessage),
          onTap: () {
            print('Tapped on chat ${chats[index].name},${index}');
          },
      ),
      ),
      bottomNavigationBar: BottomAppBar(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chat,
          ),
        ),
        // IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.status,
        //   ),
        // ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.groups,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.downloading,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.call,
          ),
        ),
      ])),
    );
  }
}
