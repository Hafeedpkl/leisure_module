import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:leisure_module/core/api_end_points.dart';
import 'package:leisure_module/core/constants.dart';
import 'package:leisure_module/ui/model/api_data_model.dart';

class AllServices {
  var dio = Dio();

  Future<List<ApiDataModel>?> getAlbums() async {
    try {
      Response response = await dio.get(KbaseUrl + ApiEndPoints.albums);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.statusCode.toString(), name: 'getAlbums');
        final List<ApiDataModel> jsonDataList = (response.data as List)
            .map((e) => ApiDataModel.fromJson(e))
            .toList();

        return jsonDataList;
      }
    } on DioError catch (e) {
      log(e.message.toString());
    }
    return null;
  }

  Future<List<ApiDataModel>?> getAlbumPhoto() async {
    try {
      Response response = await dio.get(KbaseUrl + ApiEndPoints.albumPhotos);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.statusCode.toString(), name: 'getAlbumPhoto');
        final List<ApiDataModel> jsonDataList = (response.data as List)
            .map((e) => ApiDataModel.fromJson(e))
            .toList();

        return jsonDataList;
      }
    } on DioError catch (e) {
      log(e.message.toString());
    }
    return null;
  }

  Future<List<ApiDataModel>?> getPosts() async {
    Response response = await dio.get(KbaseUrl + ApiEndPoints.getPosts);
    if (response.statusCode == 200 || response.statusCode == 201) {
      log(response.statusCode.toString(), name: 'getPosts');
      final List<ApiDataModel> jsonData =
          (response.data as List).map((e) => ApiDataModel.fromJson(e)).toList();
      return jsonData;
    }
    return null;
  }
}
