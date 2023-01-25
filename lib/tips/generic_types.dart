typedef NumOperator<T extends num> = T Function(T, T);

num add(lhs, rhs) => lhs + rhs;
num sub(lhs, rhs) => lhs - rhs;
num mul(lhs, rhs) => lhs * rhs;
num div(lhs, rhs) => lhs / rhs;

batchOperation<T extends num>(T lhs, T rhs, List<NumOperator<T>> operators) =>
    operators.map((operator) => operator(lhs, rhs)).toList();

void main(List<String> args) {
  var result = batchOperation(50, 5, [add, sub, mul, div]);
  print(result);
}
