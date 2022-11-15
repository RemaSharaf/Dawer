import 'package:drawer/drawer/drawerData.dart';
import 'package:drawer/drawer/homeScreen/homescreencontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      global: true,
      builder: (controller) {
        return AnimatedContainer(
          decoration: BoxDecoration(
            color: const Color(0xfff6f6f6),
            borderRadius: BorderRadius.circular(
              controller.passed ? 40 : 0,
            ),
          ),
          duration: const Duration(
            milliseconds: 300,
          ),
          transform: Matrix4.translationValues(
              controller.xOffset, controller.yOffset, 0)
            ..scale(controller.scaleFactor)
            ..rotateY(controller.passed ? -0.5 : 0),
          child: ListView(
            children: [
              // SizedBox(
              //   height: 1,
              // ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                // clipBehavior: Clip.antiAlias,

                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.test();
                      },
                      icon: controller.passed
                          ? const Icon(Icons.arrow_back_ios)
                          : const Icon(Icons.menu),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryGreen,
                          size: 17,
                        ),
                        Column(
                          children: const [
                            Text('Location'),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Kyiv,Ukraine',
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: const CircleAvatar(),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 18,
                    ),
                    suffixIcon: const Icon(
                      Icons.settings,
                      size: 18,
                    ),
                    fillColor: Colors.white,
                    hintText: "Search pet to adopt",
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: shadowList,
                              ),
                              child: Image.asset(
                                categories[index]["iconPath"],
                                width: 50,
                                height: 50,
                                color: Colors.grey[700],
                              ),
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(categories[index]["name"]))
                          ]);
                    }),
              ),
              animal(context),
              animal(context),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget animal(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;

  return Container(
    height: h / 3,
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Expanded(
            child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[300],
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(10)),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/DetailsScreen');
              },
              child: Image.asset("images/pet-cat2.png"),
            )
          ],
        )),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 60, bottom: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              //  boxShadow: shadowList,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "sola",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Icon(
                        Icons.male_outlined,
                        size: 25,
                      )
                    ],
                  ),
                  const Text(
                    "sola sola sola",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                  ),
                  const Text(
                    "sola sola sola",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: primaryGreen,
                        size: 17,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Kyiv,Ukraine',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
