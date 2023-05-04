
void main(List<String> args) {
  int valueint = 15;
  double valuedouble = 15.5;

  var result = (x, y) {
    return x + y;
  };

  var deger = result(valueint, valuedouble);
  print(deger);
  print(deger.runtimeType);
  deger = int.tryParse("0011", radix: 2);
  print(deger);

  bool test= false;

  print(test);
}
