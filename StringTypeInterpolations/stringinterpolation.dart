void main(List<String> args) {
  int price = 80;

  String product = "Apple Watch from " + price.toString() + "\$";

  print(product);

//product metni : Apple Watch from 80$
//length özelliği : metin karakter uzunluğunu verir
  var result = product.length;
  print(result);
  //output : 20

  var resultbool = product.contains("pp");
  //contains methodu içerisinde parametre olarak belirtilen metin olup olmadığına bakar.
  print(resultbool);
  //output : true

  //endswith methoduna parametresi ile metinin bitişini aynı olup olmadığına bakar
  var resultString = product.endsWith("from");
  print(resultString);
  //output : false

  //trim methodu baştaki ve sondaki boşlukları siler
  var res = product.trim();
  print(res);
  //output : Apple Watch from 80$

  //IndexOf Metodu belirtilen karakterin metin içerisindeki kaçıncı karakterden itibaren
  //olduğunu gösterir. ilk karakter 0 dan başlar
  result = product.indexOf('W');
  print(result);
  //output : 11

  //LastIndexOf Metodu belirtilen karakterin metin içerisindeki sondan ilk W değeri baştan
  // kaçıncı karakterden itibaren
  //olduğunu gösterir. ilk karakter 0 dan başlar
  result = product.lastIndexOf("W");
  print(result);

  //padRight veya padLeft içerisinde verilen sayısal değerlerden
  //metin uzunluğu kısa ise sayısal değerin uzunluğu sağlanana kadar
  //belirtilen karakter kadar metnin sağını yada solunu doldurur.
  res = product.padRight(30, 'a');
  res = product.padLeft(30, 'a');
  print(res);

//split methodu parametre olarak verilen değişkene göre metni
//parçalara bölerek bir list oluşturur.
  var deger = product.split(" ");
  print(deger);
  //output : [Apple, Watch, from, 80$]
}
