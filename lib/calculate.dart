import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  List<List<int>> costMatrix = [];
  List<int> path = [];
  int minCost = 0;

  void calculateTSP(int numOfCities) {
    path = List<int>.filled(numOfCities, 0);
    for (int i = 0; i < numOfCities; i++) {
      path[i] = i;
    }

    minCost = 999999;
    _tsp(0, 1, numOfCities, 0, []);
  }

  void _tsp(int currentCity, int mask, int numOfCities, int currentCost,
      List<int> currentPath) {
    if (mask == (1 << numOfCities) - 1) {
      int finalCost = currentCost + costMatrix[currentCity][0];
      if (finalCost < minCost) {
        setState(() {
          minCost = finalCost;
          path = currentPath;
        });
      }
      return;
    }

    for (int nextCity = 0; nextCity < numOfCities; nextCity++) {
      if ((mask & (1 << nextCity)) == 0) {
        int newCost = currentCost + costMatrix[currentCity][nextCity];
        List<int> newPath = List<int>.from(currentPath);
        newPath.add(nextCity);

        _tsp(nextCity, mask | (1 << nextCity), numOfCities, newCost, newPath);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Traveling Salesman Problem',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter the number of cities:',
                  style: TextStyle(fontSize: 18.0, color: Colors.yellow),
                ),
                SizedBox(height: 8.0),
                Container(
                  height: 55,
                  width: 90,
                  child:TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.yellow,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                              color: Colors.yellow,
                              width: 1,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            )
                        )
                    ),
                    onChanged: (value) {
                      setState(() {
                        int numOfCities = int.parse(value);
                        costMatrix = List<List<int>>.generate(
                          numOfCities,
                              (_) => List<int>.filled(numOfCities, 0),
                        );
                      });
                    },
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Enter the cost matrix:',
                  style: TextStyle(fontSize: 18.0,color: Colors.yellow),
                ),
                SizedBox(height: 8.0),
                Table(
                  defaultColumnWidth: FixedColumnWidth(60),
                  border: TableBorder.all(color: Colors.yellow,width: 1),
                  children: List.generate(
                    costMatrix.length,
                        (rowIndex) => TableRow(
                      children: List.generate(
                        costMatrix.length,
                            (colIndex) => Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.yellow,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.yellow,
                                      width: 1,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                    )
                                )
                            ),
                            onChanged: (value) {
                              setState(() {
                                costMatrix[rowIndex][colIndex] = int.parse(value);
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed: () {
                    calculateTSP(costMatrix.length);
                  },
                  child: Text('Evaluate',style: TextStyle(color: Colors.black),),
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Text(
                      'Minimum Cost: ',
                      style: TextStyle(fontSize: 18.0,color: Colors.yellow),
                    ),
                    Text(
                      '$minCost',
                      style: TextStyle(fontSize: 18.0,color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Text(
                  'Path: 1-> ${path.map((city) => city + 1).toList().join(" -> ")}->1',
                  style: TextStyle(fontSize: 18.0,color: Colors.yellow),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
