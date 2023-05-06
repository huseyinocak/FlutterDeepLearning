<div align="center">
<img src="https://storage.googleapis.com/cms-storage-bucket/ec64036b4eacc9f3fd73.svg" height="60">

## String Type and interpolation
</div>

## ✓ Konular

1. [String Veritipi](#stringtype)
2. [Değişken ile bağlamak](#variablesbuild)
3. [String Methodları](#stringmethods)

## String Veritipi <a name = "stringtype"></a>

String veritipi metin dizilerini ile oluşturulmuştur veritipidir. Aşağıda değişken tipi açıkça String olarak belirtilerek değer ataması yapılmıştır. Ancak açıkca belirtilmeden var keywordu ile değer ataması sonucu aynu tipe ulaşılabilirdi.

```dart
String product = "Apple Watch";

print(product);
```

## Bir değişkeni string ifadenin içerisinde tanımlamak. <a name = "variablesbuild"></a>

```dart
int price = 80;

String product = "Apple Watch from $price\$";
print(product);

//Output : Apple Watch from 80$
```
Yukarıdaki kod bakarsak 80 değerine tutan price değişkeni product isimli string ifadenin içerisinde \$price şeklinde kullanılmış. Dikkatinizi çektiyse yanında \\$ ifadesi var ancak outputta sadece 80$ şeklinde gözüküyor bunun nedeni $ ifadesinin bir işleve görüdüğü string ifadenin içerisinde sadece dolar işareti olarak gözükmesi için kaçış karakteri olan \ ile gösterildiğidir.

```dart
int price = 80;
String product = "Apple Watch from " + price.toString() + "\$";

print(product);

//Output : Apple Watch from 80$
```
Aynı ifade yukarıdaki gibi de yazılabilirdi. ilk ifadenin daha temiz ve okunabilir gözükmesi sebebiyle ilk tercihimiz olacaktır.

## String Methodları <a name = "stringmethods"></a>

<br>

```dart
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
  //output : [Apple, Watch, from, 80$]d
```

Yukarıda stringe göre bazı önemli method ve özellikler gösterilmiştir. 

