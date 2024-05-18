import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: !true,
      home: const Chess(),
    );
  }
}

class Chess extends StatefulWidget {
  const Chess({super.key});

  @override
  State<Chess> createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  String? peiceCode1;
  String? peiceCode2;

  Container cellsContainer = Container(
    width: 200.0,
    height: 60.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(
        color: Colors.black,
        width: 1.0,
      ),
    ),
    child: const Center(
      child: Text(
        '',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35.0,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const Chess(),
          ),
          (Route<dynamic> route) => false,
        ),
        child: const Icon(
          Icons.clear_rounded,
          size: 25.0,
          color: Colors.black,
        ),
      ),
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        color: Colors.grey.shade600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            cellsContainer,
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "8",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10.0),
                peiceCode1 == '8A' || peiceCode2 == '8A'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/b_castle.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '8A';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.white,
                        pieceAsset: 'assets/pictures/b_castle.png',
                      ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '6A';
                      peiceCode2 = '6C';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.black.withOpacity(0.5),
                  pieceAsset: 'assets/pictures/b_horse.png',
                ),
                peiceCode1 == '8C' || peiceCode2 == '8C'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/b_ele.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '8C';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.white,
                        pieceAsset: 'assets/pictures/b_ele.png',
                      ),
                peiceCode1 == '8D' || peiceCode2 == '8D'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/b_queen.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '8D';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: 'assets/pictures/b_queen.png',
                      ),
                peiceCode1 == '8E' || peiceCode2 == '8E'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/b_king.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '8E';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.white,
                        pieceAsset: 'assets/pictures/b_king.png',
                      ),
                peiceCode1 == '8F' || peiceCode2 == '8F'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/b_ele.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '8F';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: 'assets/pictures/b_ele.png',
                      ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '6F';
                      peiceCode2 = '6H';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.white,
                  pieceAsset: 'assets/pictures/b_horse.png',
                ),
                peiceCode1 == '8H' || peiceCode2 == '8H'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/b_castle.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '8H';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: 'assets/pictures/b_castle.png',
                      ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "7",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10.0),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '6A';
                      peiceCode2 = '5A';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.black.withOpacity(0.5),
                  pieceAsset: 'assets/pictures/b_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '6B';
                      peiceCode2 = '5B';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.white,
                  pieceAsset: 'assets/pictures/b_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '6C';
                      peiceCode2 = '5C';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.black.withOpacity(0.5),
                  pieceAsset: 'assets/pictures/b_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '6D';
                      peiceCode2 = '5D';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.white,
                  pieceAsset: 'assets/pictures/b_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '6E';
                      peiceCode2 = '5E';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.black.withOpacity(0.5),
                  pieceAsset: 'assets/pictures/b_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '6F';
                      peiceCode2 = '5F';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.white,
                  pieceAsset: 'assets/pictures/b_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '6G';
                      peiceCode2 = '5G';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.black.withOpacity(0.5),
                  pieceAsset: 'assets/pictures/b_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '6H';
                      peiceCode2 = '5H';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.white,
                  pieceAsset: 'assets/pictures/b_soldier.png',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "6",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10.0),
                peiceCode1 == '6A' || peiceCode2 == '6A'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '6B' || peiceCode2 == '6B'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode2 == '6C' || peiceCode1 == '6C'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '6D' || peiceCode2 == '6D'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode1 == '6E' || peiceCode2 == '6E'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '6F' || peiceCode2 == '6F'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode1 == '6G' || peiceCode2 == '6G'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode2 == '6H' || peiceCode1 == '6H'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "5",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10.0),
                peiceCode2 == '5A' || peiceCode1 == '5A'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode2 == '5B' || peiceCode1 == '5B'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode2 == '5C' || peiceCode1 == '5C'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode2 == '5D' || peiceCode1 == '5D'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '5E' || peiceCode2 == '5E'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode2 == '5F' || peiceCode1 == '5F'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode2 == '5G' || peiceCode1 == '5G'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode2 == '5H' || peiceCode1 == '5H'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "4",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10.0),
                peiceCode1 == '4A' || peiceCode2 == '4A'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '4B' || peiceCode2 == '4B'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode1 == '4C' || peiceCode2 == '4C'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '4D' || peiceCode2 == '4D'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode1 == '4E' || peiceCode2 == '4E'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '4F' || peiceCode2 == '4F'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode1 == '4G' || peiceCode2 == '4G'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '4H' || peiceCode2 == '4H'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "3",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10.0),
                peiceCode1 == '3A' || peiceCode2 == '3A'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode1 == '3B' || peiceCode2 == '3B'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '3C' || peiceCode2 == '3C'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode1 == '3D' || peiceCode2 == '3D'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '3E' || peiceCode2 == '3E'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode1 == '3F' || peiceCode2 == '3F'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
                peiceCode1 == '3G' || peiceCode2 == '3G'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: null,
                      ),
                peiceCode1 == '3H' || peiceCode2 == '3H'
                    ? Cell(
                        ontap: () {},
                        color: Colors.green,
                        pieceAsset: null,
                      )
                    : Cell(
                        ontap: () {},
                        color: Colors.white,
                        pieceAsset: null,
                      ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "2",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10.0),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '3A';
                      peiceCode2 = '4A';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.white,
                  pieceAsset: 'assets/pictures/w_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '3B';
                      peiceCode2 = '4B';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.black.withOpacity(0.5),
                  pieceAsset: 'assets/pictures/w_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '3C';
                      peiceCode2 = '4C';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.white,
                  pieceAsset: 'assets/pictures/w_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '3D';
                      peiceCode2 = '4D';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.black.withOpacity(0.5),
                  pieceAsset: 'assets/pictures/w_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '3E';
                      peiceCode2 = '4E';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.white,
                  pieceAsset: 'assets/pictures/w_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '3F';
                      peiceCode2 = '4F';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.black.withOpacity(0.5),
                  pieceAsset: 'assets/pictures/w_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '3G';
                      peiceCode2 = '4G';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.white,
                  pieceAsset: 'assets/pictures/w_soldier.png',
                ),
                Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '3H';
                      peiceCode2 = '4H';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.black.withOpacity(0.5),
                  pieceAsset: 'assets/pictures/w_soldier.png',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Column(
                  children: [
                    Text(
                      "1",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 40.0),
                  ],
                ),
                const SizedBox(width: 10.0),
                Column(
                  children: <Widget>[
                    peiceCode1 == '1A' || peiceCode2 == '1A'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/w_castle.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '1A';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: 'assets/pictures/w_castle.png',
                      ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "A",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '3A';
                      peiceCode2 = '3C';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.white,
                  pieceAsset: 'assets/pictures/w_horse.png',
                ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "B",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                   peiceCode1 == '1C' || peiceCode2 == '1C'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/w_ele.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '1C';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: 'assets/pictures/w_ele.png',
                      ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "C",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    peiceCode1 == '1D' || peiceCode2 == '1D'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/w_queen.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '1D';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.white,
                        pieceAsset: 'assets/pictures/w_queen.png',
                      ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "D",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                   peiceCode1 == '1E' || peiceCode2 == '1E'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/w_king.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '1E';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.black.withOpacity(0.5),
                        pieceAsset: 'assets/pictures/w_king.png',
                      ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "E",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    peiceCode1 == '1F' || peiceCode2 == '1F'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/w_ele.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '1F';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.white,
                        pieceAsset: 'assets/pictures/w_ele.png',
                      ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "F",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Cell(
                  ontap: () {
                    setState(() {
                      peiceCode1 = '3F';
                      peiceCode2 = '3H';
                      cellsContainer = Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$peiceCode1, $peiceCode2',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  color: Colors.black.withOpacity(0.5),
                  pieceAsset: 'assets/pictures/w_horse.png',
                ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "G",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    peiceCode1 == '1H' || peiceCode2 == '1H'
                    ? Cell(
                        ontap: () {},
                        color: Colors.red,
                        pieceAsset: 'assets/pictures/w_castle.png',
                      )
                    : Cell(
                        ontap: () {
                          setState(() {
                            peiceCode1 = '1H';
                            peiceCode2 = '';
                            cellsContainer = Container(
                              width: 200.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$peiceCode1',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        color: Colors.white,
                        pieceAsset: 'assets/pictures/w_castle.png',
                      ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "H",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Cell extends StatelessWidget {
  final VoidCallback ontap;
  final Color color;
  final String? pieceAsset;

  const Cell({
    super.key,
    required this.ontap,
    required this.color,
    required this.pieceAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: ontap,
          child: Center(
            child: pieceAsset == null
                ? const SizedBox()
                : Image.asset(pieceAsset!),
          ),
        ),
      ),
    );
  }
}
