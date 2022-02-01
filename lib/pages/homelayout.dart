import 'package:flutter/material.dart';
import 'package:pict_icei/bottom-tabs/tab1.dart';
import 'package:pict_icei/bottom-tabs/tab2.dart';
import 'package:pict_icei/bottom-tabs/tab3.dart';
import 'package:pict_icei/bottom-tabs/tab4.dart';
import 'package:pict_icei/packages/advance_drawer/flutter_advanced_drawer.dart';
import 'package:pict_icei/widgets/drawer.dart';
import 'package:pict_icei/widgets/size_widgets.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class homelayout extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<homelayout> {
  final _advancedDrawerController = AdvancedDrawerController();
  int _selectedIndex = 0;

  List<Widget> _screens = [
    Tab1(),
    Tab2(),
    Tab3(),
    Tab4(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: AdvancedDrawer(
        backdropColor: Colors.blueGrey[800],
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 0.0,
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "ICEI-2022",
                style: TextStyle(
                  fontFamily: 'Raleway',
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: _handleMenuButtonPressed,
                icon: ValueListenableBuilder<AdvancedDrawerValue>(
                  valueListenable: _advancedDrawerController,
                  builder: (_, value, __) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      child: Icon(
                        value.visible ? Icons.clear : Icons.menu,
                        key: ValueKey<bool>(value.visible),
                      ),
                    );
                  },
                ),
              ),
            ),
            extendBodyBehindAppBar: true,
            // drawer: AppDrawer(),
            body: _screens[_selectedIndex],
            bottomNavigationBar: TitledBottomNavigationBar(
                enableShadow: false,
                inactiveStripColor: Colors.transparent,
                activeColor: Colors.blueAccent,
                inactiveColor: Colors.white,
                currentIndex:
                    _selectedIndex, // Use this to update the Bar giving a position
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                items: [
                  TitledNavigationBarItem(
                      title: Text('Home'),
                      icon: Icon(Icons.home),
                      backgroundColor: Colors.black54),
                  TitledNavigationBarItem(
                      title: Text('Submissions'),
                      icon: Icon(Icons.work_outline_sharp),
                      backgroundColor: Colors.black54),
                  TitledNavigationBarItem(
                      title: Text('Schedule'),
                      icon: Icon(Icons.calendar_today),
                      backgroundColor: Colors.black54),
                  TitledNavigationBarItem(
                      title: Text('Downloads'),
                      icon: Icon(Icons.download),
                      backgroundColor: Colors.black54),
                ])),
        drawer: DrawerWidget(),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
