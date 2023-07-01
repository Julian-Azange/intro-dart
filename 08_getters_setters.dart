void main() {

  final mySqueare = Square(side: 10);
  mySqueare.side = -15;

  print('Area: ${mySqueare.area}');
}

class Square {
  double _side; // side * side

  Square({required double side})
    : _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('Setting new value: $value');
    if (value < 0) throw ('Value must be greater than 0');

    _side = value;
  }

  double calculateArea() => this._side * this._side;
}
