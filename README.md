# K-FLUTTER
let me tell you why use flutter!

> 优点：
> 1. 组件化，所有的东西都可以作为组件。`In Flutter, almost everything is widget, including alignment, padding and layout`.
> 2. 拥有丰富的组件。
> 3. 热重载。
> 4. 具有差异化主题，使用主题来针对Android和iOS定制样式。

## 简单教程

ios版本开发需要xcode，android版本开发需要Android studio。

VSCode及Android Studio开发时,都需要下载`Flutter`插件. 可以通过该插件自动构建包含IOS和Android两个版本的继承环境. 我们只需要在生成目录下的`lib/main.dart`下即可开始编码flutter.

所有的`widget`都是为了描述屏幕中的内容如何`display`,我们将所有的`widget`都放置在`build`方法中,通过`return`来返回.

所有内置组件都存放在`flutter`目录下的:`C:\flutter\packages\flutter\lib`中.

所有的插件都可以在[Pub site](https://pub.flutter-io.cn/flutter)中获取. 

添加插件:我们将插件名及版本注入在**pubspec.yaml**文件中的**dependencies**中, 然后右键点击`pubspec.yaml`选择`get packages`即可下载(其实,当你将该pubspec保存后会自动的帮你下载). 我们也可以用命令下载:` flutter packages get`.

插件存放地址:`flutter\.pub-cache\hosted`.

安装插件小提示: 每次安装完插件,都需要重启VSCode, 不然识别不了新安装的插件!

### flutter 常用命令

`flutter create`: 创建一个项目
`flutter run`: 运行项目
`flutter devices`: 查看机器设备

## Flutter 编码规范

1. 所有的类命名必须使用：`UpperCamelCase`,别名也叫:` Pascal case`
2. 前缀为`_`的类, 会强制变成私有类

## Dart

1. 单行函数可以使用`=>`来简写.

## Android 开发

### 什么是 Gradle

Gradle: 一个`基于Groovy语言`开发的`自动化的构建工具`，Android Studio就是采用Gradle来构建项目的。




## IOS 开发

当我们装好xcode，我们可以使用以下命令来打开虚拟机：
`open -a Simulator`: -a 代表使用指定程序来打开。

创建一个flutter应用：`flutter create my_app`.⚠️：新建项目需要连接符时要用下划线。
运行：`cd my_app || flutter run`.
部署（deploy)需要一个apple ID


1. use arrow notation for one-line function or methods.
对于只有一行的函数或方法我们可以使用`=>`，例如：`void main() => runApp(MyApp());`

2. 继承`StatelessWidget`表示让该类作为一个无状态的组件，`Flutter`秉承`everything is a widget`。

3. `build()`方法用来描述如何展现一个组件。

## ⚠注意️
1. 更新环境变量：
```
export PUB_HOSTED_URL=https://pub.flutter-io.cn //国内用户需要设置
```
这个是dart需要下载依赖包时需要的镜像路径，参考官方文档：https://www.dartlang.org/tools/pub/environment-variables

```
export PATH="$PATH:`pwd`/flutter/bin"
```
这里的pwd一定要放置为**绝对路径**


## flutter 总结

flutter借鉴了react的核心思想：**the central idea is that you build your UI out of widget**.
每一个类都称为一个组件(widget)，例如以下的🌰：
```
void main() {
  runApp(
    new Center(
      child: Text(
        "Hello, flutter",
        textDirection: TextDirection.ltr,
      )
    )
  )
}
```
这个🌰中，我们能获取到两个信息：
1. `runApp()`告诉我们组件树的根，即`Center`组件。
2. `Flutter`会强制让根组件覆盖整个移动屏幕。
2. 这里用到了两个组件：`Center`和`Text`.

---

每一个组件都只有两种状态：
1. `StateLessWidget`: 
无状态组件：**meaning that their properties can't change--all values are final**
2. `StatefulWidget`: 
有状态组件：至少需要两个类，一个是继承`StatefulWidget`的类和继承`State`的类。

---

为什么会有`state`和`statefulwidget`这两种对象？
因为它们的生命周期不同。`widget`是一个temporary object, 它用于构建在当前状态下的应用程序展示。
`Widgets are temporary objects, used to construct a presentation of application in its current state.

---

`final`的意义：
在无状态的组件中，它的内部是没有状态，或者说是没有变量的。如果需要展示某些状态，我们就需要依赖其他的外部组件，通过参数进行传入。而这些参数也需要在组件中再次声明，声明的时候需要加上`final`修饰符。
```
class CounterIncrements extends StatelessWidget {
  CounterIncrements({this.count}); // 声明构造函数
  final int count; // 使用 final 声明该变量
  // 。。。
}
``` 
参数也可以传入一个函数
```
final VoidCallback onPressed; // onPressed为一个参数
```


## 包总结：
`TextStyle`：包含文字的样式，拥有以下几个属性：
1. `fontFamily`
2. `fontSize`
3. `fontStyle`
4. `fontWeight`

