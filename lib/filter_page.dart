import 'package:flutter/material.dart';
import 'package:flutter/src/material/checkbox.dart';
import 'package:kjshoppingapp/tabs.dart';


void main() {
  runApp(MaterialApp(
    home: FilterPage(),
  ));
}

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isChecked8 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
    ),
      child: ListView(
      children: [
      Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.close,size: 25,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Text("Filters",
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: Colors.black,
            ),
            ),
          ),
        ],
      ),
        SizedBox(height: 20,),
        Container(
          height: MediaQuery.of(context).size.height * 0.9,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 15),
                child: Text("Categories",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  decoration: TextDecoration.none
                ),
                ),
              ),
              Material(
                color: Colors.grey.shade300,
                child: ListTile(
                  title: Text('Eggs',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15
                  ),
                  ),
                  leading: Checkbox(
                    value: isChecked1,
                    activeColor: Colors.green,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked1 = newValue!;
                      });
                    },
                  ),
                ),
              ),
              Material(
                color: Colors.grey.shade300,
                child: ListTile(
                  title: Text('Noodles & Pasta',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                    ),
                  ),
                  leading: Checkbox(
                    value: isChecked2,
                    activeColor: Colors.green,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked2 = newValue!;
                      });
                    },
                  ),
                ),
              ),
              Material(
                color: Colors.grey.shade300,
                child: ListTile(
                  title: Text('Chips & Crisps',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                    ),
                  ),
                  leading: Checkbox(
                    value: isChecked3,
                    activeColor: Colors.green,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked3 = newValue!;
                      });
                    },
                  ),
                ),
              ),
              Material(
                color: Colors.grey.shade300,
                child: ListTile(
                  title: Text('Fast Food',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                    ),
                  ),
                  leading: Checkbox(
                    value: isChecked4,
                    activeColor: Colors.green,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked4 = newValue!;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 15),
                child: Text("Brand",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      decoration: TextDecoration.none
                  ),
                ),
              ),
              Material(
                color: Colors.grey.shade300,
                child: ListTile(
                  title: Text('Individual Collection',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                    ),
                  ),
                  leading: Checkbox(
                    value: isChecked5,
                    activeColor: Colors.green,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked5 = newValue!;
                      });
                    },
                  ),
                ),
              ),
              Material(
                color: Colors.grey.shade300,
                child: ListTile(
                  title: Text('Home Made',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                    ),
                  ),
                  leading: Checkbox(
                    value: isChecked6,
                    activeColor: Colors.green,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked6 = newValue!;
                      });
                    },
                  ),
                ),
              ),
              Material(
                color: Colors.grey.shade300,
                child: ListTile(
                  title: Text('Mall',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                    ),
                  ),
                  leading: Checkbox(
                    value: isChecked7,
                    activeColor: Colors.green,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked7 = newValue!;
                      });
                    },
                  ),
                ),
              ),
              Material(
                color: Colors.grey.shade300,
                child: ListTile(
                  title: Text('Festival Famous',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                    ),
                  ),
                  leading: Checkbox(
                    value: isChecked8,
                    activeColor: Colors.green,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked8 = newValue!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text("Apply Filter",
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          letterSpacing: 1
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

