import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  String _searchTextTest = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: RadialGradient(
                center: Alignment(-0.5, -0.1),
                radius: 1.5,
                stops: [0.1, 0.4],
                colors: [Color.fromARGB(255, 30, 6, 87), Colors.black])),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 31, 17, 56),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              controller: searchController,
                              onChanged: (value) {
                                if (mounted)
                                  setState(() {
                                    _searchTextTest = value;
                                  });
                              },
                              decoration: const InputDecoration.collapsed(
                                  hintText: 'Search a song',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Nunito',
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text('RECENTLY PLAYED',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Nunito',
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
