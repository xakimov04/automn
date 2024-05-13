import 'package:automn/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAF0E1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSzwKyyA4-7mFBQf41P4sffvjRB03F7k6JEUveOBLNb6_e6Xmt5",
                    height: 140,
                  ),
                ),
                const Gap(15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jack",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          height: 1.5),
                    ),
                    Text(
                      "Party organizer",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                    ),
                    Gap(5),
                    Card(
                      color: Color(0xffE17855),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                        child: Text(
                          "Read more",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 40, left: 30),
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 260,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: "October ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                            TextSpan(
                              text: "Holidays",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 35),
                            ),
                          ]),
                        ),
                        const Gap(15),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              for (int i = 0; i < 3; i++) GetHolidays(i: i),
                            ],
                          ),
                        ),
                        const Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: "Party ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                            TextSpan(
                              text: "planning",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 35),
                            ),
                          ]),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Expanded(
                            child: Wrap(
                              spacing: 15,
                              children: [
                                for (int i = 0; i < 4; i++)
                                  GetSchedules(
                                    i: i,
                                    boolean: false,
                                    imagesize: 150,
                                  )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GetHolidays extends StatelessWidget {
  List titles = ["Thanksgiving", "Halloween", "Holiday"];
  List dollar = ["174.99", "326.00", "51.00"];
  List images = [
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSL6qfh5M7eVaugIour-0sGCF92YRzyI1AzopSYwKUXGKSu7oAK",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTZFTBuJGNMSz5t32X-qsM3z4TLtEZ2pxd1B3eIg6zpt2XDh9TW",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJRPK_GVlujKuv3v1KE-nhy2S-dqR5wWV9aLybyfbSvC0aHyZ-",
  ];
  int i;
  GetHolidays({required this.i, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      images[i],
                      cacheHeight: 70,
                      cacheWidth: 70,
                    ),
                  ),
                  const Gap(40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titles[i],
                        style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            height: 1.5),
                      ),
                      Text(
                        "\$ ${dollar[i]}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Gap(30),
                  Card(
                    color: i % 2 != 0
                        ? const Color(0xffE17855)
                        : const Color(0xffD7E1C8),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                      child: Text(
                        "View",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
