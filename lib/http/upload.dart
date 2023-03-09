

import 'package:dio/dio.dart';

class HiFileUpload {

  //formData
  static Future<FormData> uploadFile({required List imgArray}) async{
    var fileList = [];

    for(var item in imgArray){
      var path = item.path;
      var name = path.substring(path.lastIndexOf("/") + 1, path.length);
      var image = await MultipartFile.fromFile(path,filename: name);
      fileList.add(image);
    }

    var formData = FormData.fromMap({
      'file':fileList,
    });

    return formData;
  }

}


