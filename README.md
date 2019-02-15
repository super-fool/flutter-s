# flutter-s
let me tell you why use flutter!

优点：
1. 组件化，所有的东西都可以作为组件。
2. 拥有丰富的组件。
3. 热重载。
4. 具有差异化主题，使用主题来针对Android和iOS定制样式。

ios版本开发需要xcode，android版本开发需要Android studio。

### IOS开发
当我们装好xcode，我们可以使用以下命令来打开虚拟机：
`open -a Simulator`: -a 代表使用指定程序来打开。

创建一个flutter应用：`flutter create my_app`.⚠️：新建项目需要连接符时要用下划线。
运行：`cd my_app || flutter run`.
部署（deploy)需要一个apple ID


1. use arrow notation for one-line function or methods.
对于只有一行的函数或方法我们可以使用`=>`，例如：`void main() => runApp(MyApp());`

2. 继承`StatelessWidget`表示让该类作为一个无状态的组件，`Flutter`秉承`everything is a widget`。

3. `build()`方法用来描述如何展现一个组件。

## ⚠️
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
每一个组件的都必须包含`build`方法, 并且必须包含`build(BuildContext context)`这个参数，不然会报错：**isn't a valid override**.


## 包总结：
`TextStyle`：包含文字的样式，拥有以下几个属性：
1. `fontFamily`
2. `fontSize`
3. `fontStyle`
4. `fontWeight`

