class ApiDataModel {
  String? title;
  String? body;
  ApiDataModel({this.title, this.body});
  factory ApiDataModel.fromJson(Map<String, dynamic> json) =>
      ApiDataModel(title: json['title'], body: json['body']);
}
