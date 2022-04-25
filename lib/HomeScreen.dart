
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:social_api_demo/themes/AppColors.dart';
import 'package:social_api_demo/you_tube_api_demo/view/VideoListScreen.dart';

int _currentIndex = 0;
bool pressed_About = false;
bool pressed_elebrum = false;
bool pressed_contact = false;
bool pressed_blog = false;
bool pressed_discuss = false;
bool pressed_video = false;

final List<String> imagesList = [
  'assets/images/slide1.png',
  'assets/images/vector.png',
];
Widget appBarTitle = new Text("Home",style: TextStyle(fontWeight: FontWeight.w800,color: AppTheme.appbar_title,fontSize: 17,));
Icon actionIcon = new Icon(Icons.search,color: AppTheme.appbar_title,);

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

  }
  @override
  Widget build(BuildContext context) {
    final _inputController = TextEditingController();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Color.fromRGBO(100, 41, 8, 50),
        //or set color with: Color(0xFF0000FF)
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: AppTheme.AppBarTheme,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppTheme.appbar_title),
            onPressed: () => Navigator.of(context, rootNavigator: true)
                .pushReplacement(
              MaterialPageRoute(
                  builder: (context) =>HomeScreen()))),
          centerTitle: true,
          title: appBarTitle,
          actions: <Widget>[
            new IconButton(
              icon: actionIcon,
              onPressed: () {
                setState(() {
                  if (actionIcon.icon == Icons.search) {
                    actionIcon = new Icon(Icons.close);
                    appBarTitle = new TextField(
                        style: TextStyle(fontWeight: FontWeight.w800,color: AppTheme.appbar_title,fontSize: 17,),
                        decoration: new InputDecoration(
                          prefixIcon:
                          new Icon(Icons.search, color: AppTheme.appbar_title),
                          hintText: "Search...",
                          hintStyle: TextStyle(fontWeight: FontWeight.w800,color: AppTheme.appbar_title,fontSize: 17,),
                        ));
                  } else {
                    actionIcon = new Icon(Icons.search,color: AppTheme.appbar_title,);
                    appBarTitle = new Text("Home",style: TextStyle(fontWeight: FontWeight.w800,color: AppTheme.appbar_title,fontSize: 17,));
                  }
                });
              },
            ),
          ]),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ElevatedButton(onPressed: () { Navigator.of(context, rootNavigator: true)
                .pushReplacement(
                MaterialPageRoute(
                    builder: (context) =>VideoListScreen()));},
              child: Text("YouTube"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.white, // foreground
              ),
            ),
            ElevatedButton(onPressed: () {  },
              child: Text("Facebook"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // background
                onPrimary: Colors.white, // foreground
              ),
            ),
            ElevatedButton(onPressed: () {  },
              child: Text("Instagram"),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // background
                onPrimary: Colors.white, // foreground
              ),
            )
          ],
        )
        ,
    
    ),);

  }
}
