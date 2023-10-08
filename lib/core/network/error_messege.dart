class ErrorModel {
 final String field;
 final String message;

  ErrorModel({ required this.field, required this.message, });

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
      field:json["Error"],
      message:json['message']
  );

}