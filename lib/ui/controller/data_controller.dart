import 'package:flutter/cupertino.dart';
import 'package:leisure_module/ui/model/api_data_model.dart';
import 'package:leisure_module/ui/services/allservices.dart';

class DataController with ChangeNotifier {
  List<ApiDataModel>? albumDataList;
  List<ApiDataModel>? albumPhotoDataList;
  bool isloading = false;
  Future<void> getAlbums() async {
    isloading = true;
    notifyListeners();
    await AllServices().getAlbums().then((value) {
      albumDataList = value;
      notifyListeners();
      isloading = false;
    });
    isloading = false;
    notifyListeners();
  }

  Future<void> getAlbumsPhoto() async {
    isloading = true;
    notifyListeners();
    await AllServices().getAlbumPhoto().then((value) {
      albumPhotoDataList = value;
      notifyListeners();
      isloading = false;
    });
    isloading = false;
    notifyListeners();
  }
}
