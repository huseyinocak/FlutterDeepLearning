<p align="center">
  <a href="" rel="noopener">
 <img width=400px src="https://images.pexels.com/photos/147413/twitter-facebook-together-exchange-of-information-147413.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Project logo"></a>
</p>

<h3 align="center">Flutter Deep Learning</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/huseyinocak/FlutterDeepLearning.svg)](https://github.com/kylelobo/The-Documentation-Compendium/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/huseyinocak/FlutterDeepLearning.svg)](https://github.com/huseyinocak/FlutterDeepLearning/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> Flutter and Dart programming language in-depth review.
    <br> 
</p>

## ⚛️ Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Content](./TODO.md)
- [Authors](#authors)
<!-- - [Acknowledgments](#acknowledgement) -->

## 🛺 About <a name = "about"></a>

Includes deep learning for ios and android operating systems app development with Flutter.

---

## 🍿 Getting Started <a name = "getting_started"></a>

Flutter is an open source UI software development kit created by Google in 2017. It is used to develop apps for Android, iOS, Windows, Mac, Linux and the web.

### Prerequisites

There are no prerequisites other than the following institutions. It just takes patience and willingness.

- [Flutter SDK](https://docs.flutter.dev/get-started/install) - You can download the current flutter SDK suitable for your operating system from the Flutter SDK address.
- [VS Code](https://code.visualstudio.com/) - VS Code is a lightweight editor with complete Flutter app execution and debug support.

- [Visual Studio](https://visualstudio.microsoft.com/downloads/) - Visual Studio IDE

You can download flutter sdk with zip extension and unzip it to the location you specify.

```
c:\\flutter
```
For example, you can extract files to a directory as above. Add the bin file in the directory to the environment changes field.
For this, right click on my computer and open the advanced system settings from the properties area. Then click on the environment variables section and add the following field at the bottom of the path section. If you copied the SDK to a different directory, update it to that directory.

```
C:\flutter\bin
```

If you develop dotnet applications and use visual studio like me, you can use visual studio with built-in java jdk. For this, open Visual studio and go to the options from the tools section. Get Java Development Kit Location under Xamarin tab. You need to add the path as below in the environment variables field.

```
Variable name : JAVA_HOME
Variable value : C:\Program Files\Microsoft\jdk-11.0.16.101-hotspot
```
 
In addition, we can use the Android SDK that comes built into visual studio. Thus, we get rid of the need for a separate android sdk. For this, open Visual studio and go to the options from the tools section. Get Android SDK Location value under Xamarin tab. You need to add the path as below in the environment variables field.

```
C:\Program Files (x86)\Android\android-sdk
```

Now we can check if we can access flutter.For this, let's write the following code in the command prompt.

``` cmd
> flutter doctor
```
As a result, we should encounter a situation like the following.
``` cmd
[✓] Flutter (Channel stable, 3.7.12, on Microsoft Windows [Version 10.0.22000.1880], locale tr-TR)
[✓] Windows Version (Installed version of Windows is version 10 or higher)
[✓] Android toolchain - develop for Android devices (Android SDK version 32.0.0)
[✓] Chrome - develop for the web
[✓] Visual Studio - develop for Windows (Visual Studio Community 2022 17.5.5)
[!] Android Studio (not installed)
[✓] VS Code (version 1.77.3)
[✓] Connected device (3 available)
[✓] HTTP Host Availability
```

If you encounter a problem with android licenses, just write the cmd code below.

``` cmd
>flutter doctor --android-licenses
```

---

## ✍️ Authors <a name = "authors"></a>

- [@huseyinocak](https://github.com/huseyinocak) - Idea & Initial work

See also the list of [contributors](https://github.com/huseyinocak/FlutterDeepLearning/contributors) who participated in this project.

<!-- ## 🎉 Acknowledgements <a name = "acknowledgement"></a>

- Hat tip to anyone whose code was used
- Inspiration
- References -->
