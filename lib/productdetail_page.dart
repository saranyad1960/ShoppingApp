import 'package:flutter/material.dart';
import 'package:kjshoppingapp/tabs.dart';

import 'home_tab.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDetail(),
    );
  }
}

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
            children: [
              Stack(
                children:[
                  Container(
           width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade400,
                  width: 2,
                ),
              ),
              image: DecorationImage(
                image: AssetImage('lib/assets/apple.png'),
                fit: BoxFit.cover,
              ),
            ),
        ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.arrow_back_ios,size: 23,),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.file_download_outlined,size: 23,),
                      ),
                    ],
                  ),
                ]
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Natural Red Apple",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          decoration: TextDecoration.none
                        ),
                        ),
                        SizedBox(height: 10,),
                        Text("Fresh Fruits",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              decoration: TextDecoration.none
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite_border,size: 23,color: Colors.grey.shade700,),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 8),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Text("-",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                        decoration: TextDecoration.none
                    ),
                      textAlign: TextAlign.center,
                    ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: Text("1",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          decoration: TextDecoration.none
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: Text("+",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.green,
                          decoration: TextDecoration.none
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("\$4.99",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        decoration: TextDecoration.none
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.grey,
                thickness: 0.9,
                height: 10,
                indent: 5,
                endIndent: 5,
              ),
              ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Product Detail',
                          style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                        ),
                      ),);
                    },
                    body: ListTile(
                      title: Text('Apples at harvest vary widely in size, shape, colour, and acidity, but most are fairly round and some shade of red or yellow. The thousands of varieties fall into three broad classes: cider, cooking, and dessert varieties.',
                     style: TextStyle(
                       fontSize: 12,
                       fontFamily: 'Roboto',
                       fontWeight: FontWeight.w500,
                       color: Colors.grey
                     ),
                      ),
                    ),
                    isExpanded: _isExpanded,
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Nutritions",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 10),
                    child: Container(
                      height: 20,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade300,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Yes",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          decoration: TextDecoration.none
                        ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 20,),
                    child: Icon(Icons.arrow_forward_ios,size: 18,color: Colors.grey,),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Divider(
                color: Colors.grey,
                thickness: 0.7,
                height: 10,
                indent: 5,
                endIndent: 5,
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Review",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Icon(Icons.star,size: 12,color: Colors.orange,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Icon(Icons.star,size: 12,color: Colors.orange,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Icon(Icons.star,size: 12,color: Colors.orange,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Icon(Icons.star,size: 12,color: Colors.orange,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Icon(Icons.star,size: 12,color: Colors.orange,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 20,),
                    child: Icon(Icons.arrow_forward_ios,size: 18,color: Colors.grey,),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Divider(
                color: Colors.grey,
                thickness: 0.7,
                height: 10,
                indent: 5,
                endIndent: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 20,left: 10,right: 10),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text("Add To Basket",
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          letterSpacing: 1
                      ),
                    ),
                  ),
                ),
              ),
            ])
    );
  }}