class Details {
  String? name;
  String? language;
  String? id;
  String? bio;
  double? version;

  Details({ required this.name,required this.language, this.id, this.bio, this.version});
  //Details details=Details();

  Details.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    language = json['language'];
    id = json['id'];
    bio = json['bio'];
    version = json['version'];
  }
//   // Details.fromJson(json);
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['language'] = this.language;
//     data['id'] = this.id;
//     data['bio'] = this.bio;
//     data['version'] = this.version;
//     return data;
//   }
}