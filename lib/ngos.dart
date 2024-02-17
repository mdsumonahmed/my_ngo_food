import 'package:flutter/material.dart';
import 'package:my_ngo/ngo_profile.dart';

class NGOS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "NGO'S",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NgoProfile(),));
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
                  child: Text('All NGOs',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Tab(
                  child: Text('Requests',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Tab(
                  child: Text('Order',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Tab(
                  child: Text('History',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ViewAllNGO(),
              NGOsRequestWastedFood(),
              NGOsOrderFreshFood(),
              NGOsHistory(),
            ],
          ),
        ),
      ),
    );
  }
}

//  Start View All NGO class
class ViewAllNGO extends StatelessWidget{
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
              title: Text("NGO 1"),
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
              title: Text("NGO 2"),
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
              title: Text("NGO 3"),
              subtitle: Text("Address of Restaurant 3"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
//  End View All NGo class

// Start NGO'sRequestWastedFood for Send requests for waste food
class NGOsRequestWastedFood extends StatelessWidget{
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
              subtitle: Text("Send requests for waste food"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Request'),
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
              subtitle: Text("Send requests for waste food"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Request'),
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
              subtitle: Text("Send requests for waste food"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Request'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// End NGO'sRequestWastedFood for Send requests for waste food

// Start NGO's Request Class for Order fresh foods
class NGOsOrderFreshFood extends StatefulWidget{
  @override
  State<NGOsOrderFreshFood> createState() => _NGOsOrderFreshFood();
}

class _NGOsOrderFreshFood extends State<NGOsOrderFreshFood> {
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
                child: Text("Select Resturant"),
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
                items: <String>['Select','Resturant1', 'Resturant2', 'Resturant3']
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
                    'Order',
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
// Start NGO's Request Class for Order fresh foods



// Start NGOsHistory Class for View NGO's History

class NGOsHistory extends StatefulWidget{
  @override
  State<NGOsHistory> createState() => _HistoryState();
}

class _HistoryState extends State<NGOsHistory> {

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
              title: Text("User 1"),
              subtitle: Text("Address of User 1"),
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
              title: Text("User 2"),
              subtitle: Text("Address of User 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
//  End Accepted History Class

//  Start Pending History class
class PendingHistory extends StatelessWidget{
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
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Accept'),
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
                onPressed: () {},
                child: Text('Accept'),
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
                onPressed: () {},
                child: Text('Accept'),
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
              title: Text("User 1"),
              subtitle: Text("Address of User 1"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Accept'),
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
              title: Text("User 2"),
              subtitle: Text("Address of User 2"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Accept'),
              ),
            ),
          ],
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
              title: Text("User 1"),
              subtitle: Text("Address of User 1"),
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
              title: Text("User 2"),
              subtitle: Text("Address of User 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
//  End Confirm History class