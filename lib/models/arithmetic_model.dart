class ArithmeticModel {
  final double first;
  final double second;

  ArithmeticModel({required this.first, required this.second});

  double add() => first + second;

  double subtract() => first - second;

  double multiply() => first * second;

  double? divide() {
    if (second == 0) return null;
    return first / second;
  }

  double? calculate(String operation) {
    switch (operation) {
      case 'add':
        return add();
      case 'subtract':
        return subtract();
      case 'multiply':
        return multiply();
      case 'divide':
        return divide();
      default:
        return null;
    }
  }
}
