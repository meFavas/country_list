// To parse this JSON data, do
//
//     final countrylist = countrylistFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<Countrylist> countrylistFromJson(String str) => List<Countrylist>.from(json.decode(str).map((x) => Countrylist.fromJson(x)));

String countrylistToJson(List<Countrylist> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Countrylist {
    String? title;
    String? text;
    Img? img;

    Countrylist({
        this.title,
        this.text,
        this.img,
    });

    factory Countrylist.fromJson(Map<String, dynamic> json) => Countrylist(
        title: json["title"],
        text: json["text"],
        img: imgValues.map[json["img"]]!,
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "text": text,
        "img": imgValues.reverse[img],
    };
}

enum Img {
    ASSETS_IMAGES_FACE1_JPG
}

final imgValues = EnumValues({
    "assets/images/face1.jpg": Img.ASSETS_IMAGES_FACE1_JPG
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
