void main() {
  double radius = 5.0;
  double area = calculateArea(radius);
  print('The area of the circle is: $area');
}

double calculateArea(double radius) {
  final double pi = 3.14159265358979323846;
  double area = pi * (radius * radius);
  return area;
}
