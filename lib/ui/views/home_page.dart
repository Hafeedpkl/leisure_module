import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leisure_module/ui/controller/data_controller.dart';
import 'package:leisure_module/ui/model/grid_model.dart';
import 'package:leisure_module/ui/views/listing_screen.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({
    super.key,
  });

  List<GridModel> gridViewList = [
    GridModel(
        image:
            'assets/images/home_page_grid/vertical-cover-the-story-of-bangalore-1640249697-removebg-preview 1.png',
        text: 'Bangalore',
        color: Colors.pink.shade100),
    GridModel(
        image:
            'assets/images/home_page_grid/360_F_401430617_QU5FmwCbN3oiysrAnVN2yXreAkbPOESe-removebg-preview 1.png',
        text: 'Delhi',
        color: Colors.orange.shade200),
    GridModel(
        image:
            'assets/images/home_page_grid/vertical-cover-the-story-of-bangalore-1640249697-removebg-preview 1.png',
        text: 'Bangalore',
        color: Colors.pink.shade100),
    GridModel(
        image:
            'assets/images/home_page_grid/prado-5EI5JYMSvj8-unsplash-removebg-preview 1.png',
        text: 'Mumbai',
        color: Colors.blue.shade200),
    GridModel(
        image:
            'assets/images/home_page_grid/vertical-cover-the-story-of-bangalore-1640249697-removebg-preview 1.png',
        text: 'Bangalore',
        color: Colors.pink.shade100),
    GridModel(
        image:
            'assets/images/home_page_grid/360_F_401430617_QU5FmwCbN3oiysrAnVN2yXreAkbPOESe-removebg-preview 1.png',
        text: 'Delhi',
        color: Colors.orange.shade200),
    GridModel(
        image:
            'assets/images/home_page_grid/vertical-cover-the-story-of-bangalore-1640249697-removebg-preview 1.png',
        text: 'Bangalore',
        color: Colors.pink.shade100),
    GridModel(
        image:
            'assets/images/home_page_grid/360_F_401430617_QU5FmwCbN3oiysrAnVN2yXreAkbPOESe-removebg-preview 1.png',
        text: 'Delhi',
        color: Colors.orange.shade200),
  ];
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<DataController>(context, listen: false).getAlbums();
      Provider.of<DataController>(context, listen: false).getAlbumsPhoto();
      Provider.of<DataController>(context, listen: false).getPosts();
    });
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoTextField(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8)),
                placeholder: 'Search, city, place, area',
                padding: const EdgeInsets.all(8),
                prefix: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    CupertinoIcons.search,
                  ),
                ),
                suffix: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(CupertinoIcons.mic_fill),
                ),
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

  GestureDetector displayCard(context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ListingScreen(),
            ));
      },
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: SizedBox(
          height: 255,
          width: double.infinity,
          child: Consumer<DataController>(builder: (context, value, _) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
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
                              bottom: 10,
                              child: SizedBox(
                                // color: Colors.red,
                                // height: size.width * 0.25,
                                width: size.width * 0.6,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        value.albumDataList == null &&
                                                value.albumDataList?[index]
                                                        .title ==
                                                    null
                                            ? 'loading..'
                                            : value
                                                .albumDataList![index].title!,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        value.albumPhotoDataList == null &&
                                                value.albumPhotoDataList?[index]
                                                        .title ==
                                                    null
                                            ? 'loading...'
                                            : value.albumPhotoDataList![index]
                                                .title!,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.black12,
                                            border: Border.all(
                                                color: Colors.grey
                                                    .withOpacity(0.5))),
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
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10)
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
            );
          }),
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
      height: size.height * 0.35,
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
