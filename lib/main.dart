import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:intership_task/components/CardComponent.dart';
import 'package:intership_task/components/NavOptionComponent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool btnOne = true;
  bool btnTwo = false;
  bool btnThree = false;
  String selectedProperty = "Select Property";
  String selectedPropertySize = "Select Property";
  String selectedLocation = "Select Location";
  String selectedPrice = "Select Price";
  String selectedValue = '';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      appBar: (width < 800)
          ? AppBar(
        backgroundColor: Color(0xFF004274),
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 27,
            ),
          ),
        ),
        title: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.white,
                size: 27,
              ),
              AutoSizeText(
                "houzez",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 27,
              ),
            ),
          ),
        ],
      )
          : (width < 1000)
          ? AppBar(
        backgroundColor: Color(0xFF004274),
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 27,
            ),
          ),
        ),
        title: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.white,
                size: 27,
              ),
              AutoSizeText(
                "houzez",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 27,
              ),
            ),
          ),
        ],
      )
          : null,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: AutoSizeText(
                'HOME',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
              ),
              trailing: Icon(Icons.expand_more_outlined),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: AutoSizeText(
                'PROPERTIES',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
              ),
              trailing: Icon(Icons.expand_more_outlined),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: AutoSizeText(
                'PROPERTY',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
              ),
              trailing: Icon(Icons.expand_more_outlined),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: AutoSizeText(
                'RETAILER',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
              ),
              trailing: Icon(Icons.expand_more_outlined),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: AutoSizeText(
                'OTHERS',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
              ),
              trailing: Icon(Icons.expand_more_outlined),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {},
                child: Text("CREATE A LISTING",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                style: TextButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
              )),
          ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: AutoSizeText(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.favorite_border_rounded ),
            trailing: CircleAvatar(backgroundColor: Colors.blue,radius: 12,child: Text("0",style: TextStyle(color: Colors.white),),),
            title: AutoSizeText(
              "FAVORITES",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),Divider(),
        ]),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height * 0.8,
                  child: Image(
                    image: AssetImage("assets/bg.jpg"),
                    fit: BoxFit.cover,
                    width: width,
                    height: height * 0.8,
                    colorBlendMode: BlendMode.darken,
                    color: Colors.blue.withOpacity(0.6),
                  ),
                ),

                  Positioned(
                    child: (width>1000)? Positioned(
                        top: 30,
                        left: 70,
                        right: 20,
                        child: Container(
                          decoration: BoxDecoration(

                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.location_on_outlined,color: Colors.white,size: 37,),
                                      Text("houzez",style: TextStyle(color: Colors.white,fontSize:32,fontWeight: FontWeight.bold ),)
                                    ],
                                  ),
                                  SizedBox(width: width*0.2,),
                                  // Test(),
                                  Navoptioncomponent(title: "HOME",item1: "DEFAULT",item2: "WITH MAP",item3: "With Video",item4: "WITH IMAGE BANNER",),
                                  Navoptioncomponent(title: "PROPERTIES",item1: "GRID LAYOUT",item2: "LIST LAYOUT",item3: "WITH TABS",item4: "WITH PARALLAX"),
                                  Navoptioncomponent(title: "PROPERTY",item1: "DEFAULT LAYOUT",item2: "PROPERTY LAYOUT V1",item3: "PROPERTY LAYOUT V2",item4: "PROPERTY LAYOUT V3",),
                                  Navoptioncomponent(title: "REALTORS",item1: "AGENTS",item2: "AGENTS PROFILE",item3: "AGENCIES",item4: "AGENCIES PROFILE",),
                                  Navoptioncomponent(title: "OTHERS",item1: "ABOUT",item2: "CONTACT US",item3: "FAQ",item4: "BLOG"),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Icon(Icons.wifi_calling_3_rounded,color: Colors.white,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text("(800) 987 6543",style: TextStyle(color: Colors.white),),
                                  ),
                                  SizedBox(width: width*0.01,),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Icon(Icons.account_circle_outlined,color: Colors.white,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: ElevatedButton(onPressed: (){}, style:ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          side: BorderSide(color: Colors.white)
                                      ),
                                      backgroundColor: Colors.white.withOpacity(0.2),
                                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    ) ,child: Text("CREATE A LIST",style: TextStyle(color: Colors.white),)),
                                  ),

                                  SizedBox(width: width*0.03,),
                                ],
                              ),
                              Divider(color: Colors.white,)
                            ],
                          ),
                        ))
                      :SizedBox.shrink()
                  )
                ,
                Positioned(
                  top: 150,
                  left: 20,
                  right: 20,
                  child: AutoSizeText(
                    "Welcome To Houzez",
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(color: Colors.white, fontSize: 36),
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: width*0.1,
                    child: AutoSizeText(
                      "Houzez is an innovative real estate WordPress theme that helps to \n ensure your website’s success in this super-competitive market.",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  top: width>1000?500:width<500?350:300,
                  left: width>1000?600:width<500?width/2.5:300,
                  child: Container(
                    child:width>500? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       TextButton(
                          onPressed: () {
                            setState(() {
                              btnOne = true;
                              btnTwo = false;
                              btnThree = false;
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: btnOne
                                ? Colors.white
                                : Colors.blue.withOpacity(0.8),
                            textStyle: TextStyle(
                                color: btnOne
                                    ? Colors.black
                                    : Colors.white),
                            padding: EdgeInsets.all(20.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: AutoSizeText(
                            "All Status",
                            style: TextStyle(color: btnOne?Colors.black:Colors.white),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              btnOne = false;
                              btnTwo = true;
                              btnThree = false;
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor:btnTwo?Colors.white: Colors.blue.withOpacity(0.8),
                            textStyle: TextStyle(color:btnTwo? Colors.black: Colors.white),
                            padding: EdgeInsets.all(20.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: AutoSizeText(
                            "For Rent",
                            style: TextStyle(color: btnTwo?Colors.black:Colors.white),
                          ),
                        ),
                    TextButton(
                          onPressed: () {

                            setState(() {
                              btnOne = false;
                              btnTwo = false;
                              btnThree = true;
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: btnThree?Colors.white : Colors.blue.withOpacity(0.8),
                            textStyle: TextStyle(color:btnThree?Colors.black: Colors.white),
                            padding: EdgeInsets.all(20.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: AutoSizeText(
                            "For Sale",
                            style: TextStyle(color: btnThree?Colors.black:Colors.white),
                          ),
                        ),
                      ],
                    ):Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              btnOne = true;
                              btnTwo = false;
                              btnThree = false;
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: btnOne
                                ? Colors.white
                                : Colors.blue.withOpacity(0.8),
                            textStyle: TextStyle(
                                color: btnOne
                                    ? Colors.black
                                    : Colors.white),
                            padding: EdgeInsets.all(20.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: AutoSizeText(
                            "All Status",
                            style: TextStyle(color: btnOne?Colors.black:Colors.white),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              btnOne = false;
                              btnTwo = true;
                              btnThree = false;
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor:btnTwo?Colors.white: Colors.blue.withOpacity(0.8),
                            textStyle: TextStyle(color:btnTwo? Colors.black: Colors.white),
                            padding: EdgeInsets.all(20.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: AutoSizeText(
                            "For Rent",
                            style: TextStyle(color: btnTwo?Colors.black:Colors.white),
                          ),
                        ),
                        TextButton(
                          onPressed: () {

                            setState(() {
                              btnOne = false;
                              btnTwo = false;
                              btnThree = true;
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: btnThree?Colors.white : Colors.blue.withOpacity(0.8),
                            textStyle: TextStyle(color:btnThree?Colors.black: Colors.white),
                            padding: EdgeInsets.all(20.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: AutoSizeText(
                            "For Sale",
                            style: TextStyle(color: btnThree?Colors.black:Colors.white),
                          ),
                        ),
                      ],
                    )
                  ),
                ),

              ],
            ),
            Center(
              child: width>1000 ?Container(width:width*0.8,height:height*0.2,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5,offset: Offset.fromDirection(10))]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText("LOOKING FOR"),
                        Container(
                          width: 150,
                          height: 50,
                          child: CustomDropdown<String>(
                            hintText: 'Select',
                            items: ["HOUSE","VILLA","OFFICE","SHOP","APPARTMENT"],
                            initialItem: "HOUSE",
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                      ],
                    ), Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText("LOCATION"),
                        Container(
                          width: 150,height: 50,
                          child: CustomDropdown<String>(
                            hintText: 'Select',
                            items: ["DEWAS","INDORE","UJJAIN","DHAR","BHOPAL","SHAJAPUR"],
                            initialItem: "DEWAS",
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText("PROPERTY SIZE"),
                        Container(
                          width: 150,
                          height: 50,
                          child: CustomDropdown<String>(
                            hintText: 'Select',
                            items: ["1000SQFT","2000SQFT","3000SQFT","4000SQFT","5000SQFT","6000SQFT"],
                            initialItem: "1000SQFT",
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                      ],
                    ),Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText("MAX. BUDGET"),
                         Container(
                           width: 150,
                           height: 50,
                           child: CustomDropdown<String>(
                             hintText: 'Select',
                             items: ["1 LAKH","5 LAKH","10 LAKH","15 LAKH","20 LAKH"],
                             initialItem: "1 LAKH",
                             onChanged: (value) {
                               print(value);
                             },
                           ),
                         ),

                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: width*0.01,),
                      TextButton(onPressed: (){},style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.only(top: 20.0,bottom: 20.0,left:50.0,right: 50.0 ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                          )
                        ), child: AutoSizeText("Search",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                      ],
                    ),
                  ],
                ),

              ):Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: width*0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5,offset: Offset.fromDirection(10))]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AutoSizeText("LOOKING FOR"),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: CustomDropdown<String>(
                          hintText: 'Select',
                          items: ["HOUSE","VILLA","OFFICE","SHOP","APARTMENT"],
                          initialItem: "HOUSE",
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AutoSizeText("LOCATION"),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: CustomDropdown<String>(
                          hintText: 'Select Property',
                          items: ["DEWAS","INDORE","UJJAIN","DHAR","BHOPAL","SHAJAPUR"],
                          initialItem: "DEWAS",
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AutoSizeText("PROPERTY SIZE"),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: CustomDropdown<String>(
                          hintText: 'Select',
                          items: ["1000sqft","2000sqft","3000sqft","4000sqft","5000sqft","6000sqft"],
                          initialItem: "1000sqft",
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AutoSizeText("MAX. BUDGET"),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: CustomDropdown<String>(
                          hintText: 'Select',
                          items: ["1 LAKH","5 LAKH","10 LAKH","15 LAKH","20 LAKH","25 LAKH"],
                          initialItem: "1 LAKH",
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextButton(onPressed: (){},style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.only(top: 20.0,bottom: 20.0,left:50.0,right: 50.0 ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero
                              )
                          ), child: AutoSizeText("Search",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        ),
                      )

                    ],
                  ),
                ),
              )),
            Padding(padding: EdgeInsets.all(40.0),child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText("Discover Our Featured Listings",style: TextStyle(fontSize: 36),),
                  AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipisicing elit",style: TextStyle(fontSize: 16,color: Colors.grey),),
                ],
              ),
            ),),
            SizedBox(
              width: width,
              height: height*0.6,
              child: ListView.builder(itemCount: 5,shrinkWrap:true,scrollDirection: width>800?Axis.horizontal:Axis.vertical, itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Cardcomponent(),
                );
              },),
            )
          ],
        ),
      ),
    );
  }
}

