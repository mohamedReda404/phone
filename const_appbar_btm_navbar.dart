import 'package:flutter/material.dart';
import 'package:nayapay_clone/screens/cards.dart';
import 'package:nayapay_clone/screens/chat.dart';
import 'package:nayapay_clone/components/drawer.dart';
import 'package:nayapay_clone/screens/home_screen.dart';
import 'package:nayapay_clone/screens/payments.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List screens = [
    const ConstAppBarAndNavbar(),
    ChatScreen(),
    const CardsScreen(),
    const PaymentsScreen()
  ];

  Widget contactBox(Icon icon, String title, String subtitle) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8,
          top: 12,
          bottom: 12,
        ),
        child: ListTile(
          focusColor: Colors.red,
          leading: icon,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xff3b3938),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              "NAYA",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "PAY",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 2,
                    right: 2,
                    top: 1,
                    bottom: 1,
                  ),
                  child: Text(
                    "BETA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.orange,
        elevation: 0,
        foregroundColor: Colors.white,
        actions: _currentIndex == 0
            ? [
                IconButton(
                  icon: const Icon(Icons.chat),
                  padding: EdgeInsets.zero,
                  splashRadius: 20,
                  onPressed: () {},
                ),
                // SizedBox(width: 20),
                IconButton(
                  icon: const Icon(Icons.phone),
                  padding: EdgeInsets.zero,
                  splashRadius: 20,
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) => AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        insetPadding: EdgeInsets.zero,
                        scrollable: true,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Customer Support",
                              style: TextStyle(
                                fontSize: 23,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.close),
                              splashRadius: 15,
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                        titlePadding: const EdgeInsets.only(
                          left: 20,
                          right: 10,
                          top: 15,
                        ),
                        content: Column(
                          children: [
                            const SizedBox(height: 20),
                            contactBox(
                              Icon(
                                Icons.error_outline,
                                size: 30,
                                color: Colors.green.shade400,
                              ),
                              "Contact Dispute Center",
                              "Dispute a financial transaction",
                            ),
                            const Divider(
                              height: 0.5,
                              thickness: 0.5,
                            ),
                            contactBox(
                              Icon(
                                Icons.chat_outlined,
                                size: 30,
                                color: Colors.green.shade400,
                              ),
                              "Chat Now",
                              "Start a chat with our support team",
                            ),
                            const Divider(
                              height: 0.5,
                              thickness: 0.5,
                            ),
                            contactBox(
                              Icon(
                                Icons.phone,
                                size: 30,
                                color: Colors.green.shade400,
                              ),
                              "Call Helpline",
                              "Speak to the team for assistance",
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  padding: EdgeInsets.zero,
                  splashRadius: 20,
                  onPressed: () {},
                ),
                const SizedBox(width: 15),
              ]
            : _currentIndex == 1
                ? [
                    IconButton(
                      icon: const Icon(Icons.search),
                      padding: EdgeInsets.zero,
                      splashRadius: 20,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.chat),
                      padding: EdgeInsets.zero,
                      splashRadius: 20,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications),
                      padding: EdgeInsets.zero,
                      splashRadius: 20,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 15),
                  ]
                : _currentIndex == 2
                    ? [
                        IconButton(
                          icon: const Icon(Icons.add),
                          padding: EdgeInsets.zero,
                          splashRadius: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.phone),
                          padding: EdgeInsets.zero,
                          splashRadius: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.notifications),
                          padding: EdgeInsets.zero,
                          splashRadius: 20,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 15),
                      ]
                    : [
                        IconButton(
                          icon: const Icon(Icons.chat),
                          padding: EdgeInsets.zero,
                          splashRadius: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.phone),
                          padding: EdgeInsets.zero,
                          splashRadius: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.notifications),
                          padding: EdgeInsets.zero,
                          splashRadius: 20,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 15),
                      ],
      ),
      drawer: const NayapayDrawer(),
      bottomNavigationBar: Container(
        height: height * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 3,
              offset: const Offset(-3, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: _currentIndex == 0 ? Colors.green : Colors.black,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 10,
                      color: _currentIndex == 0 ? Colors.green : Colors.black,
                    ),
                  ),
                ],
              ),
              onTap: () {
                if (_currentIndex != 0) {
                  setState(() {
                    _currentIndex = 0;
                  });
                }
              },
            ),
            GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat_outlined,
                    color: _currentIndex == 1 ? Colors.green : Colors.black,
                  ),
                  Text(
                    "Chat",
                    style: TextStyle(
                      fontSize: 10,
                      color: _currentIndex == 1 ? Colors.green : Colors.black,
                    ),
                  ),
                ],
              ),
              onTap: () {
                if (_currentIndex != 1) {
                  setState(() {
                    _currentIndex = 1;
                  });
                }
              },
            ),
            GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.credit_card_outlined,
                    color: _currentIndex == 2 ? Colors.green : Colors.black,
                  ),
                  Text(
                    "Cards",
                    style: TextStyle(
                      fontSize: 10,
                      color: _currentIndex == 2 ? Colors.green : Colors.black,
                    ),
                  ),
                ],
              ),
              onTap: () {
                if (_currentIndex != 2) {
                  setState(() {
                    _currentIndex = 2;
                  });
                }
              },
            ),
            GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.payments_outlined,
                    color: _currentIndex == 3 ? Colors.green : Colors.black,
                  ),
                  Text(
                    "Payments",
                    style: TextStyle(
                      fontSize: 10,
                      color: _currentIndex == 3 ? Colors.green : Colors.black,
                    ),
                  ),
                ],
              ),
              onTap: () {
                if (_currentIndex != 3) {
                  setState(() {
                    _currentIndex = 3;
                  });
                }
              },
            ),
          ],
        ),
      ),
      body: screens[_currentIndex],
    );
  }
}
