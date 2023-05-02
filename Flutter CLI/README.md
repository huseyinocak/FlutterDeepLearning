<div align="center">
<img src="https://storage.googleapis.com/cms-storage-bucket/ec64036b4eacc9f3fd73.svg" height="60">

## Command-line Tool (CLI)
</div>

## ✓ Komut Listesi

1. [version komutu](#version)
2. [upgrade komutu](#upgrade)
3. [doctor komutu](#doctor)
4. [devices komutu](#devices)
5. [create komutu](#create)
6. [run komutu](#run)
7. [build komutu](#build)
8. [pub komutu](#pub)
9. [analyze komutu](#analyze)

## 💻 Flutter Komut Satırları

Flutterda komut satırları ile uygulama oluşturabilir, derleyebilir ve bağlı bir cihaza yükleme yapabilirsiniz. Bunun dışında kullanabileceğiniz komutları derinlemesine inceleyelim.

### 1. version komutu : <a name = "version"></a>

*Flutter sdk ve bileşenlerine ait versiyon sorgulamasını bu komut ile yaparız.*
```
> flutter --version

> Flutter 3.7.12 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 4d9e56e694 (2 weeks ago) • 2023-04-17 21:47:46 -0400
Engine • revision 1a65d409c7
Tools • Dart 2.19.6 • DevTools 2.20.1
```

### 2. upgrade komutu : <a name = "upgrade"></a>

*Flutter sürümünüzü güncellemek için kullanılır eğer güncel sürüm kullanıyorsanız aşağıdaki gibi bir bildirim alırsınız. Ancak güncel sürüm kullanmadığınız durumunda komut sonrası güncelleme işlemi başlar. Flutter sdk güncel olup olmadığını sürekli kontrol etmenize gerek yokturç Herhangi bir flutter komut çalıştırıldığın güncel olmama durumunda 'flutter upgrade' uyarısı alırsınız.*

```
> flutter upgrade

> Flutter is already up to date on channel stable
Flutter 3.7.12 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 4d9e56e694 (2 weeks ago) • 2023-04-17 21:47:46 -0400
Engine • revision 1a65d409c7
Tools • Dart 2.19.6 • DevTools 2.20.1
```

### 3. doctor komutu : <a name = "doctor"></a>
*Flutterın çalışabilmesi gereken yüklü araçlarla ilgili bilgileri kontrol ederek gösterir. Eğer herhangi bir hata varsa  
"! Doctor found issues in 1 category. gibi bir uyarı verir." şuan benim için verilen uyarı android studionun yüklü olmadığı uyarı ancak bu uyarı sdk çalışmasını engelleyecek bir uyarı değildir.*


```
> flutter doctor

> Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.7.12, on Microsoft Windows [Version 10.0.22000.1880], locale tr-TR)
[✓] Windows Version (Installed version of Windows is version 10 or higher)
[✓] Android toolchain - develop for Android devices (Android SDK version 32.0.0)
[✓] Chrome - develop for the web
[✓] Visual Studio - develop for Windows (Visual Studio Community 2022 17.5.5)
[!] Android Studio (not installed)
[✓] VS Code (version 1.77.3)
[✓] Connected device (3 available)
[✓] HTTP Host Availability

! Doctor found issues in 1 category.
```

### 4. devices komutu  <a name = "devices"></a>

*Flutter uygulamasının çalışması için kullanılacak cihazların ve ortamların listesini verir. Örneğin Windows Form olarak, Chrome veya Edge tarayıcısında çalıştırılabilir. Son olarak Android emulatorde uygulamanızı çalıştırabilirsiniz. Biz genellikle android emulatorü kullanacağız*


```
> flutter devices

> 4 connected devices:

sdk gphone64 x86 64 (mobile) • emulator-5554 • android-x64    • Android 13 (API 33) (emulator)
Windows (desktop)            • windows       • windows-x64    • Microsoft Windows [Version 10.0.22000.1880]
Chrome (web)                 • chrome        • web-javascript • Google Chrome 112.0.5615.138
Edge (web)                   • edge          • web-javascript • Microsoft Edge 112.0.1722.64
```


### 5. create komutu  <a name = "create"></a>
*FLutter uygulamaları oluşturmak için kullanılır.Bazı örnek uygulama oluşturma komutları aşağıdaki gibidir.*

```
> flutter create MyApp

> flutter create .

> flutter create --org com.samples.edit MyApp

> flutter create --org com.samples.edit .

> flutter create --project-name MyAppStyle --org com.samples.edit --description "Modern mobil uygulama" .

> flutter create --project-name MyAppStyle --org com.samples.edit -a kotlin -i swift .

> flutter create --sample=material.Scaffold.1 . 

> flutter create --org com.example --template=plugin --platforms=android,ios,linux,macos,windows -a kotlin hello

> flutter create --org com.example --template=plugin --platforms=android,linux -a kotlin hello

```

Create methodu kullanarak uygulama oluşmak için bazı optionslar kullanılabilir. Kullanılabilicek optionslar aşağıda tabloda gösterilmektedir.**

| Options              | Values - Default  | Description  |
|  :-------------      |:-------------    | :-----       |
| --project-name       |                   | Yeni Flutter projesinin proje adı. |
| --org                |                   | Google Play mağazasında her uygulamanın benzersiz paket adı vardır. Alan adınızın tersidir. com.alanadı.editor gibi.|
| -a                   | Java or Kotlin(default)|  Android'e özgü kod için kullanılacak dil.|
| -i                   | objc, swift (default)| iOS'a özgü kod için kullanılacak dil. |
| --description        | "A new Flutter project." | Projeniz için kullanılacak açıklama. pubspec.yaml içerisinde yer alır.|
| --platforms           | ios (default), android (default), windows (default), linux (default), macos (default), web (default) | Proje tarafından desteklenen platformlar. Hedef projede platform klasörleri (ör. android/) oluşturulacaktır. Yalnızca "--template", eklenti olarak ayarlandığında çalışır. |
| --list-samples=\<path> |  | path yerine bir dosya adı verilir ve flutter sdk örnek uygulama dosyası Json formatında çıktı alınır. "--sample" komutu ile örnek çalıştırılır.|
|--sample=\<id>   | |Json formatında alınan örneklere id girilerek editör uygulama incelenebilir.


### 6. run komutu  <a name = "run"></a>
*FLutter uygulamasını çalıştırır.*

```
> flutter run .\lib\main.dart
Using hardware rendering with device sdk gphone64 x86 64. If you notice graphics artifacts, consider enabling software rendering with "--enable-software-rendering".
Launching .\lib\main.dart on sdk gphone64 x86 64 in debug mode...
Running Gradle task 'assembleDebug'...                             54,9s
✓  Built build\app\outputs\flutter-apk\app-debug.apk.
Installing build\app\outputs\flutter-apk\app-debug.apk...           3,4s
I/mple.deleteproj( 7153): Compiler allocated 4533KB to compile void android.view.ViewRootImpl.performTraversals()
Syncing files to device sdk gphone64 x86 64...                     337ms

Flutter run key commands.
r Hot reload. 🔥🔥🔥
R Hot restart.
h List all available interactive commands.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).

💪 Running with sound null safety 💪

An Observatory debugger and profiler on sdk gphone64 x86 64 is available at: http://127.0.0.1:49425/TRGdqwjuWNQ=/
The Flutter DevTools debugger and profiler on sdk gphone64 x86 64 is available at: http://127.0.0.1:9101?uri=http://127.0.0.1:49425/TRGdqwjuWNQ=/
E/SurfaceSyncer( 7153): Failed to find sync for id=0
W/Parcel  ( 7153): Expecting binder but got null!

```

*Uygulama çalışırken kod editöründen yapılan değişikler anında emülatöre yansır bunun için hot reload çalışır. Ancak yapılsal değişiklikler için hot restart yapılır. Hot resartta çok hızlı olmakla birlikte bazen yeterli olmayabilir. Böyle durumlarda uygulama sonlandırılarak yeniden başlatılır.*

### 7. build komutu  <a name = "build"></a>

*Flutter uygulaması bu komut sayesinde derlenir. Uygulama dizininde komut satırına aşağıdaki hangi ortamda derleme yapılacaksa parametre olarak verilerek derleme yapılır*

```
> flutter build apk

💪 Building with sound null safety 💪

Running Gradle task 'assembleRelease'...                          102,1s
✓  Built build\app\outputs\flutter-apk\app-release.apk (16.8MB).

```
- aar       -> AAR ve POM dosyası içeren bir depo oluşturun.
- apk       -> Uygulamanızdan bir Android APK dosyası oluşturun.
- appbundle -> Uygulamanızdan bir Android App Bundle dosyası oluşturun.
- package   -> Uygulamanızdan Flutter varlıkları dizinini oluşturun. 
- web       -> Bir web uygulama paketi oluşturun.
- windows   -> Bir Windows masaüstü uygulaması oluşturun.


### 8. pub komutu  <a name = "pub"></a>

```
> flutter pub <subcommand> [arguments]
```

 ```markdown
> Altkomutlar :

add         pubspec.yaml dosyasına yeni bir bağımlılık ekler.
cache       Pub system önbelleğine alınmış bağımlılıklarla çalışır.
deps        Paket bağımlılıklarını yazdırır.
downgrade   Projede paketleri eski sürüme geçirir.
get         Talep edilen paketleri indirir.
global      Pub global paketleri çalışır.
login       pub.dev'de oturum açın.
logout      pub.dev'den çıkış yapın.
outdated    Hangi paketlerin yükseltilebileceğini bulmak için analiz edin.
publish     Publish the current package to pub.dartlang.org.
remove      Removes a dependency from the current package.
run         Run an executable from a package.
test        Run the "test" package.
token       Barındırılan pub depoları için kimlik doğrulama belirteçlerini yönetin.
upgrade     Upgrade the current package's dependencies to latest versions.
uploader    Manage uploaders for a package on pub.dev.
version     Pub sürümünü yazdırın.
```

```
> flutter pub version
Pub 2.19.6
```


```cmd
> flutter pub add convex_bottom_bar

Resolving dependencies...
  async 2.10.0 (2.11.0 available)
  characters 1.2.1 (1.3.0 available)
  collection 1.17.0 (1.17.1 available)
+ convex_bottom_bar 3.2.0
  js 0.6.5 (0.6.7 available)
  lints 2.0.1 (2.1.0 available)
  matcher 0.12.13 (0.12.16 available)
  material_color_utilities 0.2.0 (0.3.0 available)
  meta 1.8.0 (1.9.1 available)
  path 1.8.2 (1.8.3 available)
  source_span 1.9.1 (1.10.0 available)
  test_api 0.4.16 (0.5.2 available)
```



```pwsh
> flutter pub get

Running "flutter pub get" in Deletee...
Resolving dependencies... 
  async 2.10.0 (2.11.0 available)
  characters 1.2.1 (1.3.0 available)
  collection 1.17.0 (1.17.1 available)
  js 0.6.5 (0.6.7 available)
  lints 2.0.1 (2.1.0 available)
  matcher 0.12.13 (0.12.16 available)
  material_color_utilities 0.2.0 (0.3.0 available)
  meta 1.8.0 (1.9.1 available)
  path 1.8.2 (1.8.3 available)
  source_span 1.9.1 (1.10.0 available)
  test_api 0.4.16 (0.5.2 available)
Got dependencies!
```

### 9. analyze komutu  <a name = "analyze"></a>

*Kaynak kodları analiz eder. Düzeltme önerilerini getirir.*

```
> flutter analyze -d emulator-5554
Analyzing Deletee...                                                    

   info - Don't invoke 'print' in production code - lib\main.dart:50:27 - avoid_print

1 issue found. (ran in 5.4s)
```