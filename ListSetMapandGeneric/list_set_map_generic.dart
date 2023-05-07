void main(List<String> args) {
  //List tanımlamak
  //1. tipi belirtmeden ve tip güvenliği sağlamadan aşağıdaki gibi tanılanabilir ve add metodu ile değer eklenebilir.
  //Add metodu ile hem string hemde integer değerler eklenmiştir.
  var mylist = [];
  mylist.add("value");
  mylist.add(15);
  print(mylist);
  print(mylist.runtimeType);

  //Output :
  //[value, 15]
  //List<dynamic>

  var mylistsafety = <String>[];
  mylistsafety.add("value");
  //mylistsafety.add(15); Bu şekilde integer eklenmeye çalışırsanız. The argument type 'int' can't be assigned to the parameter type 'String'.
  print(mylistsafety);
  print(mylistsafety.runtimeType);

  //Output :
  //[value]
  //List<String>

//Boş liste oluşturmak
  var emptylist = List.empty();
  print(emptylist.runtimeType);

  //Liste elemanlarına erişmek.
  //Aşağıda 3. elemana erişilmektedir. programlama dillerinde indexler 0 dan başladığına dikkat etmeliyiz.
  //Ayrıca 3. elemanla 4. elemanın aynı olduğunu ve listenin uniqui (tekil) tutulamadığını görüyoruz.
  mylist = [1, 2, 3, 3];
  print(mylist[2]);

  //listede ki tüm elemanları yazdırma.
  for (var element in mylist) {
    print(element);
  }

  mylist.forEach((element) {
    print(element);
  });

  //addAll bir toplu elemanlar ekleyebilir bu direk bir liste değişkenine myliste ekleyebileceğimiz gösterir.
  mylist.addAll([4, 8, 12]);

  mylist.addAll(mylistsafety);
  print(mylist);

  print(mylist.reversed);
  print(mylist.any((element) => element == "0"));
}
