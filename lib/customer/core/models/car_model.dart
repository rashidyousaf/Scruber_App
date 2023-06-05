class CarModel {
  String? id;
  String? img;
  String? type;
  String? model;
  String? name;
  String? color;

  CarModel({this.img, this.type, this.model, this.name, this.color, this.id});

  CarModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    img = json['img'];
    type = json['type'];
    model = json['model'];
    name = json['name'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'img': img,
        'type': type,
        'model': model,
        'name': name,
        'color': color,
      };
}
