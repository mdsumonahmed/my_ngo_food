import 'dart:core';

import 'package:flutter/material.dart';
import 'package:my_ngo/restaurant_profile.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Restaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Restaurant",
              style:TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ) ,
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RestaurantProfile(),));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.network('https://images.squarespace-cdn.com/content/v1/53b599ebe4b08a2784696956/1495767786612-YF1JF6XGTDRMS920068H/professional-photographer-08.jpg',),
                  ),
                ),
              ),
            ],
            bottom: const TabBar(
              labelColor: Colors.black,
              isScrollable: true,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.grey),
              tabs: [
                Tab(
                  child: Text('List restaurant',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Tab(
                  child: Text('Requests',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Tab(
                  child: Text('History',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AvaliableRestaurant(),
              RequestWithWsteFood(),
              History(),
            ],
          ),
        ),
      ),
    );
  }
}

class AvaliableRestaurant extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 1"),
              subtitle: Text("Address of Restaurant 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 2"),
              subtitle: Text("Address of Restaurant 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3H_8YWS34mzmKJR1-sCNKnpkP3xzDITQXuA&usqp=CAU'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 3"),
              subtitle: Text("Address of Restaurant 3"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}

class RequestWithWsteFood extends StatefulWidget{
  @override
  State<RequestWithWsteFood> createState() => _RequestWithWsteFoodState();
}

class _RequestWithWsteFoodState extends State<RequestWithWsteFood> {
  String dropdownValue = 'Select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                child: Text("Select NGO")
            ),
            Container(
              alignment: Alignment.topLeft,
              child: DropdownButton<String>(
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Select','NGO1', 'NGO2', 'NGO3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                ),
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                maxLines: 4,
              ),
            ),
            Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(
                  child: const Text(
                    'Request',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class History extends StatefulWidget{
  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  var _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex==1){
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cast_connected),
            label: 'Accepted',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pending),
            label: 'Pending',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
            label: 'Confirm',
            backgroundColor: Colors.purple,
          ),
        ],
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      body: Container(
      color: Colors.green,
      child: Center(
        //child: _widgetOptions.elementAt(_selectedIndex),
        child: acceptHistory(),

      ),
    ),
    );
  }

  Widget acceptHistory(){
    if(_selectedIndex==0){
      return AcceptedHistory();
    }
    if(_selectedIndex==1){
      return PendingHistory();
    }
    if(_selectedIndex==2){
      return ConfirmHistory();
    }
    return Scaffold(

    );
  }
}

//  Start Accepted History class
class AcceptedHistory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 1"),
              subtitle: Text("Address of Restaurant 1"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 2"),
              subtitle: Text("Address of Restaurant 2"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3H_8YWS34mzmKJR1-sCNKnpkP3xzDITQXuA&usqp=CAU'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 3"),
              subtitle: Text("Address of Restaurant 3"),
              trailing: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
//  End Accepted History Class

//  Start Pending History class
class PendingHistory extends StatefulWidget{
  @override
  State<PendingHistory> createState() => _PendingHistoryState();
}

class ListItemData {
  String title = "";
  String description = "";
  String imageUrl = "";
  String status = "accept";

  ListItemData(this.title, this.description, this.imageUrl, this.status);

  // void changeListButtonText() {
  //     this.status = "Pending";
  // }

  set setStatus(String s) {
    status = s;
  }

}



class _PendingHistoryState extends State<PendingHistory> {
  // String pending_list_button = "Accept";
  // void changeListButtonText() {
  //   setState((){
  //     pending_list_button = "Pending";
  //   });
  // }

  getListItem(List<ListItemData> itemData) {
    List<Widget> listItem = <Widget>[];

    for(int i = 0; i < itemData.length; i++) {
      listItem.add(
          ListTile(
            leading: Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(itemData[i].imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: Text(itemData[i].title),
            subtitle: Text(itemData[i].description),
            trailing: Container(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    //itemData[i].setStatus = "Pending";
                    itemData.removeAt(i);
                  });

                },
                child: Text(itemData[i].status),
              ),
            ),
          )
      );
    }
    return listItem;
  }
List<ListItemData> listData = [
  ListItemData("Restaurant 1", "Address of Restaurant 1", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg", "accept"),
  ListItemData("Restaurant 2", "Address of Restaurant 2", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg", "accept"),
  ListItemData("Restaurant 3", "Address of Restaurant 3", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg", "accept"),
  ListItemData("Restaurant 4", "Address of Restaurant 4", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg", "accept"),
  ListItemData("Restaurant 5", "Address of Restaurant 5", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg", "accept")
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: getListItem(
            listData
          )
          /*
          [
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 1"),
              subtitle: Text("Address of Restaurant 1"),
              trailing: ElevatedButton(
                onPressed: () {
                  changeListButtonText();
                },
                child: Text(pending_list_button),

              ),
            ),
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 2"),
              subtitle: Text("Address of Restaurant 2"),
              trailing: ElevatedButton(
                onPressed: () {
                  changeListButtonText();
                },
                child: Text(pending_list_button),
              ),
            ),
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3H_8YWS34mzmKJR1-sCNKnpkP3xzDITQXuA&usqp=CAU'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 3"),
              subtitle: Text("Address of Restaurant 3"),
              trailing: ElevatedButton(
                onPressed: () {
                  changeListButtonText();
                },
                child: Text(pending_list_button),
              ),
            ),
          ]
          */,
        ),
      ),
    );
  }
}
//  End Pending Hostory class

//  Start Confirm History class
class ConfirmHistory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 1"),
              subtitle: Text("Address of Restaurant 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/640px-Tom%27s_Restaurant%2C_NYC.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 2"),
              subtitle: Text("Address of Restaurant 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3H_8YWS34mzmKJR1-sCNKnpkP3xzDITQXuA&usqp=CAU'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text("Restaurant 3"),
              subtitle: Text("Address of Restaurant 3"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
//  End Confirm History class