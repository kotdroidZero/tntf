void main(List<String> args) {
  final circle1 = const Circle(10.0);
  final circle2 = const Circle(10.0);
  print(circle1 == circle2);
  print(circle1.hashCode);
  print(circle2.hashCode);

  final circle3 = Circle(2);
  final circle4 = Circle(2);
  print(circle3 == circle4);
  print(circle3.hashCode);
  print(circle4.hashCode);

  const circle5 = Circle(10);
  const circle6 = Circle(10);
  print(circle5 == circle6);
  print(circle5.hashCode);
  print(circle6.hashCode);

  var circle7 = Circle(10.0);
  var circle8 = Circle(10.0);
  print(circle7 == circle8);
  print(circle7.hashCode);
  print(circle8.hashCode);

  var circle9 = const Circle(10.0);
  var circle10 = const Circle(10.0);
  print(circle9 == circle10);
  print(circle9.hashCode);
  print(circle10.hashCode);
}

class Circle {
  final double radius;
  const Circle(this.radius);
}
