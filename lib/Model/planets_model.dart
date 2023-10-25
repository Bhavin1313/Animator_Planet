class PlanetsModel {
  var position;
  var name;
  var type;
  var radius;
  var orbital_period;
  var gravity;
  var velocity;
  var distance;
  var description;
  var image;
  List more;

  PlanetsModel({
    required this.position,
    required this.name,
    required this.type,
    required this.radius,
    required this.orbital_period,
    required this.gravity,
    required this.velocity,
    required this.distance,
    required this.description,
    required this.image,
    required this.more,
  });

  factory PlanetsModel.fromjson({required Map data}) {
    return PlanetsModel(
      position: data['position'],
      name: data['name'],
      type: data['type'],
      radius: data['radius'],
      orbital_period: data['orbital_period'],
      gravity: data['gravity'],
      velocity: data['velocity'],
      distance: data['distance'],
      description: data['description'],
      image: data['image'],
      more: data['more'],
    );
  }
}
