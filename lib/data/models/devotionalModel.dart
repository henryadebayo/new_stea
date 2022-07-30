class DevotionalModel {
  final String id;
  final String devotionalName;
  final String devotionalDescription;
  final String devotionalPath;

  DevotionalModel({
    required this.id,
    required this.devotionalName,
    required this.devotionalDescription,
    required this.devotionalPath,
});
 factory DevotionalModel.fromJson(Map<String, dynamic> json)=>
   DevotionalModel(
     id: json['id'],
     devotionalName: json["name"],
     devotionalDescription: json['description'],
     devotionalPath: json['pdfPath'],
   );

}