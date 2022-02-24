import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Profile ',
            style:
                TextStyle(fontFamily: 'rrr', fontSize: 30, color: Colors.black),
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: ListView(children: [
          Container(
            margin: EdgeInsets.all(16),
            child: Card(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none),
              elevation: 20,
              shadowColor: Colors.white,
              child: Container(
                height: 130,
                padding: EdgeInsets.only(left: 10, right: 100),
                // margin: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://previews.123rf.com/images/baranq/baranq1603/baranq160300831/53957368-.jpg'),
                      radius: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User Name',
                            style: TextStyle(fontSize: 23, fontFamily: 'rrr'),
                          ),
                          Text(
                            'Profession',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              profile(
                Title: 'Full Name :',
                Triling: 'Abdul Rahim',
              ),
            ],
          ),
          Divider(),
          profile(
            Title: 'Email :',
            Triling: 'rahimsr983@gmail.com',
          ),
          Divider(),
          profile(
            Title: 'Phone Number :',
            Triling: '01718663032',
          ),
          Divider(),
          profile(
            Title: 'Address :',
            Triling: 'DUET-1700, Gazipur',
          ),
          SizedBox(
            height: 16,
          ),
          MaterialButton(
              child: Container(
                margin: EdgeInsets.only(bottom: 16, left: 90, right: 90),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 161, 170, 221),
                    borderRadius: BorderRadius.circular(18)),
                child: Container(
                  child: Center(
                      child: Text(
                    'Log Out',
                    style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
                  )),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/loginpage');
              }),
        ]));
  }
}

wishlist({a, b, c}) {
  return GestureDetector(
    onTap: () {},
    child: Column(
      children: [
        ListTile(
          leading: Text(
            a,
            style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
          ),
          trailing: Wrap(
            spacing: 5,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                b,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
              ),
              Icon(
                c,
                size: 18,
              )
            ],
          ),
        )
      ],
    ),
  );
}

profile({Title, Triling}) {
  return ListTile(
    title: Text(
      Title,
      style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
    ),
    subtitle: Text(
      Triling,
      style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
    ),
  );
}
