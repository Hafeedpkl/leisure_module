import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leisure_module/views/indivdual_page.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoTextField(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8)),
                placeholder: 'Find places, events, & more...',
                padding: const EdgeInsets.all(8),
                prefix: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.orange,
                  ),
                ),
                suffix: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    CupertinoIcons.mic_fill,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            bottom: TabBar(
                // dividerColor: Colors.orange,
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                labelStyle: const TextStyle(fontSize: 10),
                tabs: [
                  const Tab(
                    icon: Icon(Icons.bed),
                    text: 'Private Rooms',
                  ),
                  Tab(
                    icon: Image.asset('assets/images/play.png'),
                    text: 'play',
                  ),
                  Tab(
                    icon: SizedBox(
                        height: 25,
                        child: Image.asset(
                          'assets/images/party_event.png',
                          fit: BoxFit.cover,
                        )),
                    text: 'Party/Event',
                  ),
                  Tab(
                    icon: Image.asset('assets/images/workspace.png'),
                    text: 'Work SpacesS',
                  ),
                ]),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                filterSection(),
                const SizedBox(height: 10),
                const Text(
                  '42 Properties found',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => IndvidualPage(),
                              ));
                        },
                        child: displayCard(context)))
              ],
            ),
          )),
    );
  }

  SizedBox displayCard(context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.6,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Column(children: [
                    imageStackSection(size),
                    const SizedBox(height: 15),
                    detailsSection()
                  ]),
                  bedroomSqftStackSection(size)
                ],
              )),
        ),
      ),
    );
  }

  Positioned bedroomSqftStackSection(Size size) {
    return Positioned(
        bottom: size.width * 0.18,
        right: 0,
        left: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              // color: Colors.red,
              width: size.width * 0.85,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(children: [
                  Row(
                    children: [
                      Image.asset('assets/images/icon_images/bed_icon.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Bedroom 2',
                        style: TextStyle(color: Colors.black45, fontSize: 13),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/icon_images/sqft_icon.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '1560 sqft',
                        style: TextStyle(color: Colors.black45, fontSize: 13),
                      )
                    ],
                  )
                ]),
              ),
            ),
          ),
        ));
  }

  SizedBox detailsSection() {
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                        text: '₹11,499',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    TextSpan(
                        text: ' / night',
                        style: TextStyle(fontSize: 13, color: Colors.grey))
                  ]),
                ),
                Row(
                  children: [
                    Image.asset('assets/images/pet_logo.png'),
                    const Text(
                      'Pet Friendly',
                      style: TextStyle(color: Colors.orange, fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Image.asset('assets/images/daisy_avatar.png'),
                Text('Room Hosted by Daisy')
              ],
            ),
          )
        ],
      ),
    );
  }

  Stack imageStackSection(Size size) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    'assets/images/displaycard_big.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  height: size.width * 0.22,
                  width: size.width * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'The Camellia',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Double deluxe with attatched bath',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black12,
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5))),
                              width: 60,
                              height: 20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 14,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '(82)',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black12,
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5))),
                              // width: 60,
                              height: 20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.amber,
                                    size: 14,
                                  ),
                                  Text(
                                    ' 14th Avn, Bangalore ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: Icon(CupertinoIcons.heart),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Container filterSection() {
    List<Widget> widgetList = [
      Row(
        children: [
          const Text('Filter'),
          const SizedBox(width: 4),
          Image.asset('assets/images/filter_icon.png')
        ],
      ),
      Row(
        children: const [
          Text('sort'),
          Icon(Icons.keyboard_arrow_down_rounded),
        ],
      ),
      const Text('Popular near me'),
      const Text('on Demand'),
    ];
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey.shade200)),
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widgetList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20)),
            height: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: widgetList[index],
            ),
          ),
        ),
      ),
    );
  }
}
