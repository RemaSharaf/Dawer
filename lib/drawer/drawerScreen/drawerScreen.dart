import 'package:drawer/drawer/drawerData.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: primaryGreen,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text("Miroslava Savitskaya",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            margin: const EdgeInsets.only(bottom: 4),
                          ),
                          const Text("Active status",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: drawerItems
                  .map(
                    (e) => Row(
                      children: [
                        Icon(
                          e["icon"],
                          color: Color(0xff6f9998),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            e["title"],
                            style: const TextStyle(
                                color: Color(0xff6f9998),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 1 / 15,
                        )
                      ],
                    ),
                  )
                  .toList(),
            ),
            Row(
              children: [
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.settings,
                      color: Color(0xff6f9998),
                    ),
                    const Text(
                      'Settings',
                      style: TextStyle(
                          color: Color(0xff6f9998),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 2,
                      height: 20,
                      color: Color(0xff6f9998),
                    ),
                    const Text(
                      'Log out',
                      style: TextStyle(
                        color: Color(0xff6f9998),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )),
                Expanded(child: Container())
              ],
            )
          ],
        ),
      ),
    );
  }
}
