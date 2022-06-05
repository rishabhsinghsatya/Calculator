import 'package:calculator/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // test('Addition test', () {
  //   final calculator = Calculator();
  //   final result = calculator.add(6, 2);
  //   expect(result, 8);
  //   print("Addition test Successfully");
  // });
  test('Addition test', () {
    final calculator = CalculatorApp();
    final result = calculator.add(6, 2);
    expect(result, 8);
    print("Addition test Successfully");
  });
  test('Subtract  test', () {
    final calculator = CalculatorApp();
    final result = calculator.subtract(6, 2);
    expect(result, 4);
    print("Subtract test Successfully");
  });
  test('Multiply test', () {
    final calculator = CalculatorApp();
    final result = calculator.multiply(6, 2);
    expect(result, 12);
    print("Multiply test Successfully");
  });
  test('Divide test', () {
    final calculator = CalculatorApp();
    final result = calculator.divide(6, 2);
    expect(result, 3);
    print("Divide test Successfully");
  });
}
