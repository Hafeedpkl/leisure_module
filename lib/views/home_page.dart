import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leisure_module/model/grid_model.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({
    super.key,
  });

  List<GridModel> gridViewList = [
    GridModel(
        image:
            'assets/images/vertical-cover-the-story-of-bangalore-1640249697-removebg-preview 1.png',
        text: 'Bangalore',
        color: Colors.pink.shade100),
    GridModel(
        image:
            'assets/images/360_F_401430617_QU5FmwCbN3oiysrAnVN2yXreAkbPOESe-removebg-preview 1.png',
        text: 'Delhi',
        color: Colors.orange.shade200),
    GridModel(
        image:
            'assets/images/vertical-cover-the-story-of-bangalore-1640249697-removebg-preview 1.png',
        text: 'Bangalore',
        color: Colors.pink.shade100),
    GridModel(
        image:
            'assets/images/prado-5EI5JYMSvj8-unsplash-removebg-preview 1.png',
        text: 'Mumbai',
        color: Colors.blue.shade200),
    GridModel(
        image:
            'assets/images/vertical-cover-the-story-of-bangalore-1640249697-removebg-preview 1.png',
        text: 'Bangalore',
        color: Colors.pink.shade100),
    GridModel(
        image:
            'assets/images/360_F_401430617_QU5FmwCbN3oiysrAnVN2yXreAkbPOESe-removebg-preview 1.png',
        text: 'Delhi',
        color: Colors.orange.shade200),
    GridModel(
        image:
            'assets/images/vertical-cover-the-story-of-bangalore-1640249697-removebg-preview 1.png',
        text: 'Bangalore',
        color: Colors.pink.shade100),
    GridModel(
        image:
            'assets/images/360_F_401430617_QU5FmwCbN3oiysrAnVN2yXreAkbPOESe-removebg-preview 1.png',
        text: 'Delhi',
        color: Colors.orange.shade200),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoTextField(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(8)),
            placeholder: 'Search, city, place, area',
            padding: const EdgeInsets.all(8),
            prefix: const Icon(CupertinoIcons.search),
            suffix: const Icon(CupertinoIcons.mic_fill),
          ),
        )),
        body: ListView(
          children: [
            gridViewSection(context),
            currentLocationBox(),
            const SizedBox(height: 10),
            displayCard(context)
          ],
        ));
  }

  Card displayCard(context) {
    final size = MediaQuery.of(context).size;
    return Card(
      color: Colors.white,
      elevation: 3,
      child: SizedBox(
        height: 255,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 20,
              width: size.width * 0.6,
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            'assets/images/Image.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            // color: Colors.red,
                            height: size.width * 0.22,
                            width: size.width * 0.6,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
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
                                    '14th Avn, Near by Mg Street Bangalore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.black12,
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.5))),
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
                        )
                      ])),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: '₹11,499',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: ' / night',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey))
                              ]),
                            ),
                            const Icon(
                              CupertinoIcons.right_chevron,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding currentLocationBox() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: ListTile(
          leading: SizedBox(
              height: 35,
              width: 35,
              child: Image.asset(
                'assets/images/Mobile_GPS.png',
                fit: BoxFit.contain,
              )),
          title: const Text('Current Location'),
          subtitle: const Text(
            'Turn on your devices\'s GPS',
            style: TextStyle(color: Colors.grey),
          ),
          trailing: const Icon(CupertinoIcons.right_chevron),
        ),
      ),
    );
  }

  SizedBox gridViewSection(context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      width: double.infinity,
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisExtent: 120),
        itemCount: 8,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                  height: size.width * 0.22,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: gridViewList[index].color),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Image.asset(
                      gridViewList[index].image,
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              Text(gridViewList[index].text)
            ],
          ),
        ),
      ),
    );
  }
}
