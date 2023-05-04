<div align="center">
<img src="https://storage.googleapis.com/cms-storage-bucket/ec64036b4eacc9f3fd73.svg" height="60">

## Dart - Variables and Data Types
</div>
<br>

### ∞ Var Keyword

Dart dili tip güvenliğine önem verir ancak türlerini açıkça belirtmeden bildirebilirsiniz. Tür çıkarımı sayesinde, bu değişkenlerin türleri başlangıç ​​değerlerine göre belirlenir:

```dart
//Değişken tipi açıkça belirtilmesede
//değişken değerlerine göre tür çıkarımları
var intValue = 15;
print(intValue.toString());
print(intValue.runtimeType);
```

```pwsh
15
int
Exited
```
> Kaynak koda ve çıktıya bakıldığında [**var keyword**](./latekeyword.dart) ile herhangi bir tip belirtilmediği halde çalışma zamanında integer tipine dönüştüğü görülmektedir.



Aynı kodu aşağıdaki gibi güncellersek :

```dart
var intValue = 15;
print(intValue.toString());
print(intValue.runtimeType);

intValue = "15";
print(intValue.toString());
print(intValue.runtimeType);
```
```yaml
: Error: A value of type 'String' can't be assigned to a variable of type 'int'.
VariablesandDataTypes.dart:9
  intValue = "15";
             ^
```
> Kodu çalıştırdığımızda yukarıda ki bir hata alırız. Hatayı incelediğimizde int veri tipi olarak belirlen bir değişkene string veri tipinde değer atanmak istendiği belirtiliyor. Değişken [**var keyword**](./latekeyword.dart) ile ilk değeri atanan değişken sadece o tipteki verilerin atabilir.

Ayrıca bu hata kodunu dart kodunu çalıştırmadan öncede VS Code uyarısınu alırsınız.

```yaml
A value of type 'String' can't be assigned to a variable of type 'int'.
Try changing the type of the variable, or casting the right-hand type to 'int'.dartinvalid_assignment
```
***

### ∞ late Keyword
<br>



> Bir değişkeni tanımladıktan sonra değerini daha sonra atamak için kullanılır. Değeri atanmamış ancak null olmaması gereken değişkenler için kullanılır.

<br>

```dart
late int value;
var result = (int x) => x * x;

value = 10;
print(result(value));
```
<br>

### ∞ final and const Keywords

Değişkene atanan değerin daha sonra değiştirilmemsi isteniyorsa final veya const kullanılır. final bir değişkene bir kez değer atanabilmesini sağlar. const ise değişken oluşturulurken atanır. Değeri bir daha değiştirilemez. 

```dart
//final olarak tanımalanan değişken değeri istenirse değişken oluşturulken yada daha sonra atanabilir.
final int deger;
deger = 15;
print(deger);

//deger değişkenine bir daha atama yapılır ve program çalıştırılırsa  
deger = 26;
print(deger);
```

> final olarak eklenen değer değişkenine tekrar bir değer ataması yapılması sonucunda aşağıdaki hata oluşur.
```yaml
: Error: Final variable 'deger' might already be assigned at this point.
finalandconstkeywords.dart:8
  deger = 26;
  ^^^^^
```
 
> const olarak tanımlanan değişkenler oluşturulurken değer atanır ve bir daha değiştirilemezler. örneğin connectionstring yani veritabanı yolu değerlerini tutan sabit ve değişmemesi gereken değerler için kullanılır. 

```dart
//const olarak tanımlanan bir değişken oluşturulurken değer ataması yapmalısınız. düzeltilmiş hali const int sabit =5;
const int sabit;

print(sabit);
```
Bu hata const olarak tanımlanmış bir değişken tanımlanırken değer ataması yapılmaması durumunda hata oluşturur.  

```yaml
: Error: The const variable 'sabit' must be initialized.
finalandconstkeywords.dart:12
Try adding an initializer ('= expression') to the declaration.
  const int sabit;
            ^^^^^

```

## Dart- Data Types

1. **int**
2. **double**
3. boolean
4. string
5. list
6. set
7. map

- **int :** Değer tipi integer yani tamsayı veri tiplerini temsil eder.

- **double :** ondalıklı sayı veritiplerini temsil eder.

- **boolean :** true/false değerlerini temsil eder.


```dart
//int tamsayı
int valueint = 15;
//double tipi
double valuedouble = 15.5;
var result = (x, y) {
  return x + y;
};
var deger = result(valueint, valuedouble);
print(deger);
print(deger.runtimeType);
deger = int.tryParse("0011", radix: 2);
print(deger);
//bool veri tipi
bool test= false;

print(test);
```
