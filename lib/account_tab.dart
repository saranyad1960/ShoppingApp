import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountTab(),
    );
  }
}

class AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 10,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 25),
              child: Center(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage('lib/assets/manface.png'),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 10),
                  child: Text("Afsar Hassan",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("afsarhaasan@gmail.com",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(Icons.edit,
                size: 20,
                color: Colors.black,
              ),
            )
          ],
        ),
        SizedBox(height: 40,),
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black.withOpacity(0.1), width: 2.0),
              bottom: BorderSide(color: Colors.black.withOpacity(0.1), width: 2.0),
              left: BorderSide(color: Colors.transparent, width: 2.0),
              right: BorderSide(color: Colors.transparent, width: 2.0),
            ),
          ),
          child: Center(
            child: ListTile(
            leading: Icon(Icons.receipt,color: Colors.black,size: 25,),
            title: Text("Orders",
              style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w500,
              ),),
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,),
                ),
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black.withOpacity(0.1), width: 2.0),
              left: BorderSide(color: Colors.transparent, width: 2.0),
              right: BorderSide(color: Colors.transparent, width: 2.0),
            ),
          ),
          child: Center(
            child: ListTile(
              leading: Icon(Icons.receipt_outlined,color: Colors.black,size: 25,),
              title: Text("My Details",
                style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,),
            ),
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black.withOpacity(0.1), width: 2.0),
              left: BorderSide(color: Colors.transparent, width: 2.0),
              right: BorderSide(color: Colors.transparent, width: 2.0),
            ),
          ),
          child: Center(
            child: ListTile(
              leading: Icon(Icons.location_on,color: Colors.black,size: 25,),
              title: Text("Delivery Address",
                style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,),
            ),
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black.withOpacity(0.1), width: 2.0),
              left: BorderSide(color: Colors.transparent, width: 2.0),
              right: BorderSide(color: Colors.transparent, width: 2.0),
            ),
          ),
          child: Center(
            child: ListTile(
              leading: Icon(Icons.payment,color: Colors.black,size: 25,),
              title: Text("Payment Methods",
                style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,),
            ),
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black.withOpacity(0.1), width: 2.0),
              left: BorderSide(color: Colors.transparent, width: 2.0),
              right: BorderSide(color: Colors.transparent, width: 2.0),
            ),
          ),
          child: Center(
            child: ListTile(
              leading: Icon(Icons.local_offer,color: Colors.black,size: 25,),
              title: Text("Promo Card",
                style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,),
            ),
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black.withOpacity(0.1), width: 2.0),
              left: BorderSide(color: Colors.transparent, width: 2.0),
              right: BorderSide(color: Colors.transparent, width: 2.0),
            ),
          ),
          child: Center(
            child: ListTile(
              leading: Icon(Icons.notifications,color: Colors.black,size: 25,),
              title: Text("Notifications",
                style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,),
            ),
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black.withOpacity(0.1), width: 2.0),
              left: BorderSide(color: Colors.transparent, width: 2.0),
              right: BorderSide(color: Colors.transparent, width: 2.0),
            ),
          ),
          child: Center(
            child: ListTile(
              leading: Icon(Icons.help,color: Colors.black,size: 25,),
              title: Text("Help",
                style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,),
            ),
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black.withOpacity(0.1), width: 2.0),
              left: BorderSide(color: Colors.transparent, width: 2.0),
              right: BorderSide(color: Colors.transparent, width: 2.0),
            ),
          ),
          child: Center(
            child: ListTile(
              leading: Icon(Icons.info,color: Colors.black,size: 25,),
              title: Text("About",
                style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,),
            ),
          ),
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
            ),
           child: Row(
             children: [
               Icon(Icons.logout,color: Colors.green,size: 25,),
               Padding(
                 padding: const EdgeInsets.only(left: 100),
                 child: Text("Log Out",
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w500,
                   color: Colors.green
                 ),
                 ),
               ),
             ],
           ),
          ),
        )
      ],
    );
  }

}