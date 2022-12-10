import 'package:flutter/material.dart';
import 'package:pet_shop/body.dart';
import 'package:pet_shop/constants.dart';
import 'package:pet_shop/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'PetShop',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          const CircleAvatar(
            backgroundColor: kPrimaryColor,
          )
        ],
      ),
      body: Body(),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('shohan'),
              accountEmail: Text('shohan@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/shohan.jpg'),
              ),
            ),
            MenuList(
              press: () {},
              title: 'Home',
              icon: Icons.home,
            ),
            MenuList(
              press: () {},
              title: 'Category',
              icon: Icons.dashboard,
            ),
            MenuList(
              press: () {},
              title: 'Carts',
              icon: Icons.shopping_cart,
            ),
            const Divider(
              color: kPrimaryColor,
            ),
            MenuList(
              press: () {},
              title: 'Setting',
              icon: Icons.settings,
            ),
            MenuList(
              press: () {},
              title: 'About',
              icon: Icons.help,
            ),
            MenuList(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Profile())));
                    
              },
              title: 'profile',
              icon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({
    Key? key,
    required this.title,
    required this.press,
    required this.icon,
  }) : super(key: key);
  final String title;
  final Function() press;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: ListTile(
        title: Text(title),
        leading: Icon(
          icon,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
