class Bicycle {
  int cadence;
  int _speed;
  int gear;

  int get speed => _speed;

  Bicycle(this.cadence, this._speed, this.gear);

  @override
  String toString() => 'Bicycle: $_speed mph';

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

void main() {
  var bike = new Bicycle(2, 0, 1);
  print(bike);
}

