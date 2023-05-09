import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndvidualPage extends StatelessWidget {
  const IndvidualPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/d9f6a984-4ce8-4dc5-b513-cdc25c7b9360 1.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: size.height * 0.52,
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customAppBar(size, context),
                      imageLabel(size),
                    ]),
              ),
            ],
          ),
          Container(
            color: Colors.black,
            child: Card(
                child: SizedBox(
              // height: 500,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  children: [
                    anEntirePlaceSection(size),
                    const Divider(),
                    notesFromTheHostSection(),
                    const Divider(),
                    bedsForComfortSleepSection(),
                    const SizedBox(height: 30),
                    hereWhatWeOfferSection(),
                    const SizedBox(height: 20),
                    discoverTheStaySection(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )),
          )
        ],
      )),
    );
  }

  SizedBox discoverTheStaySection() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Discover the stay',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 10),
          const Text(
            'A-10, Phase 2, Bangalore',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
              '14th Cross Rd, Botanica Garden, JPNagar,\n VI Phase, Bangalore, Karnataka, 560066'),
          Image.asset('assets/images/google_map.png'),
          const Text(
            'Safety & Property',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 20),
          iconTextWidget(
              image: 'assets/images/icon_images/security-camera.png',
              text: 'Security camera on the property'),
          const SizedBox(height: 10),
          iconTextWidget(
              image: 'assets/images/icon_images/stairs.png',
              text: 'must climb stairs carefully'),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset('assets/images/icon_images/pawprint.png'),
              const SizedBox(width: 5),
              const Text(
                'Security camera on the property',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: double.infinity,
            child: const Center(
              child: Text(
                'Read all safety & securities',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Availability',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 15),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25)),
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('27 July - 27 July 1 guest'),
                    Text(
                      'Change',
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                ),
              )),
          const SizedBox(height: 30),
          imageTextParagraphWidget(
            image: 'assets/images/icon_images/rupee.png',
            title: 'Cancellation policy',
            subtitle: 'Cancel anytime before 30 July 2022',
          ),
          const SizedBox(height: 20),
          const Divider(),
          const SizedBox(height: 20),
          imageTextParagraphWidget(
            image: 'assets/images/icon_images/rules.png',
            title: 'House rules',
            subtitle: 'Cancel anytime before 30 July 2022',
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                        text: '₹7000',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    TextSpan(
                        text: ' / night',
                        style: TextStyle(fontSize: 13, color: Colors.black))
                  ]),
                ),
                const Text('(4th - 6th april)'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: double.infinity,
            child: const Center(
              child: Text(
                'Reserve the place',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox hereWhatWeOfferSection() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Here\'s What we offer',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          iconTextWidget(
              image: 'assets/images/icon_images/tv_2.png',
              text: '4K Led Tv 55inch'),
          const SizedBox(height: 10),
          iconTextWidget(
              image: 'assets/images/icon_images/swimming-pool.png',
              text: 'Swimming Pool'),
          const SizedBox(height: 10),
          iconTextWidget(
              image: 'assets/images/icon_images/clean-service.png',
              text: 'Sanitized every room'),
          const SizedBox(height: 10),
          iconTextWidget(
              image: 'assets/images/icon_images/amenities.png',
              text: 'Bathing Essentials'),
          const SizedBox(height: 10),
          iconTextWidget(
              image: 'assets/images/icon_images/wifi_icon.png',
              text: '5g WIFI all around the house'),
          const SizedBox(height: 10),
          iconTextWidget(
              image: 'assets/images/icon_images/living-room.png',
              text: 'Dedicated Workspace'),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: double.infinity,
            child: const Center(
              child: Text(
                'Show all amenties',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  Card bedsForComfortSleepSection() {
    return Card(
      child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Beds for comfort sleep',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.asset(
                              'assets/images/deluxe_room.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Deluxe Room',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  '132 sqft - Max 2 Adult with 1 child',
                                  style: TextStyle(fontSize: 10),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/icon_images/tv_icon.png'),
                                    const Text(' TV '),
                                    Image.asset(
                                        'assets/images/icon_images/ac_icon.png'),
                                    const Text(' AC '),
                                    const SizedBox(width: 60),
                                    const Text('+8 more')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  Column notesFromTheHostSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Notes from the host',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 10),
        profileCard(),
        const SizedBox(height: 10),
        const Text(
          'Our luxurious villa, designed to offer a hamonius blend\n of modern amenities and traditional charm. Situated in an\n idyllic location,our villa provides an exquisite and serene\n stay for discerning travelers seeking a sophisticated and\n unforgottable experience',
          style: TextStyle(fontSize: 13),
        ),
        const Text(
          'Read more',
          style: TextStyle(color: Colors.orange, fontSize: 15),
        ),
        const SizedBox(height: 20),
        const Text(
          'Why book this room?',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 15),
        imageTextParagraphWidget(
          image: 'assets/images/icon_images/hassle_free_check_in.png',
          title: 'Hassle free check-in',
          subtitle:
              'Our in-house caretaker is available 24/7 to assist\n you with anything you need during stay',
        ),
        const SizedBox(height: 20),
        imageTextParagraphWidget(
          image: 'assets/images/icon_images/Timer.png',
          title: '24x7 power backup',
          subtitle: 'Extra discount offered for special members',
        ),
      ],
    );
  }

  Padding imageTextParagraphWidget(
      {required String image,
      required String title,
      required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 13),
              )
            ],
          )
        ],
      ),
    );
  }

  Container profileCard() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          // color: Colors.amber,
          borderRadius: BorderRadius.circular(14)),
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/daisy_large.png'),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Hosted by'),
                    Text(
                      'Daisy Anderson',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hosting since',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Aug, 2022',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox anEntirePlaceSection(Size size) {
    return SizedBox(
      height: size.width * 0.4,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: size.height * 0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon_images/home_shine.png'),
                      const SizedBox(width: 10),
                      const Text(
                        'An Entire Place',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  // color: Colors.red,
                  height: size.height * 0.08,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iconTextWidget(
                  image: 'assets/images/icon_images/person.png',
                  text: '4 Guests'),
              iconTextWidget(
                  image: 'assets/images/icon_images/sqft_icon.png',
                  text: '3 Rooms'),
              iconTextWidget(
                  image: 'assets/images/icon_images/bed_icon.png',
                  text: '2 Bedrooms')
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: iconTextWidget(
                image: 'assets/images/icon_images/bathroom.png',
                text: '1 Bathroom'),
          )
        ],
      ),
    );
  }

  Row iconTextWidget({required String image, required String text}) {
    return Row(
      children: [Image.asset(image), const SizedBox(width: 5), Text(text)],
    );
  }

  SizedBox imageLabel(Size size) {
    return SizedBox(
      height: size.height * 0.15,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'The Camellia',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              '100% Pet friendly pool villa with LakeView',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black12,
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.5))),
                      width: 60,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black12,
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.5))),
                      // width: 60,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      CupertinoIcons.photo_on_rectangle,
                      color: Colors.white,
                      size: 14,
                    ),
                    Text(
                      '1/16',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox customAppBar(Size size, BuildContext context) {
    return SizedBox(
      height: size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart,
                    color: Colors.white,
                  )),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share_outlined,
                  color: Colors.white,
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
