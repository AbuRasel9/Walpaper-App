import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiOperation {
  static getTrandingWalpapers() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated"), headers: {
      "Authorization" : "Zw3Uj9R1BdKu0FPG0O9RE72xqF6sdRHeTqmyrl3vXx2wMMNzrXIU6ixv"
    }).then((value){
      Map<String,dynamic>jsonData=jsonDecode(value.body);
      List photos=jsonData['photos'];
      photos.forEach((element) {
        Map<String,dynamic>src=element['src'];
        print(src['portrait']);
      });

    });
  }
}
